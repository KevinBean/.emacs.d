;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add image from conference phone upload                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use case is taking a photo of a slide in a conference and uploading
;; it to google drive or dropbox or whatever to get it on your
;; computer. You then want to embed it in an org-mode document by
;; moving it to the same folder and renaming according to the current
;; section of the org file, avoiding name clashes

;; required libraries
(require 'dash)
(require 'swiper)
(require 's)

;; start directory
(defvar bianbin/conference-image-dir (expand-file-name "~/Documents/2017/CloudStation/images"))

(defun bianbin/insert-conference-image ()
  "Insert image from conference directory, rename and add link in current file.

The file is taken from a start directory set by `bianbin/conference-image-dir' and moved to the current directory, renamed and embedded at the point as an org-mode link. The user is presented with a list of files in the start directory, from which to select the file to move, sorted by most recent first."
  (interactive)
  (let (file-list target-dir file-list-sorted start-file start-file-full file-ext end-file end-file-base end-file-full file-number)
    ;; clean directories from list but keep times
    (setq file-list
          (-remove (lambda (x) (nth 1 x))
                   (directory-files-and-attributes bianbin/conference-image-dir)))

    ;; get target directory
    (setq target-dir (file-name-directory (buffer-file-name)))

    ;; sort list by most recent
    ;; http://stackoverflow.com/questions/26514437/emacs-sort-list-of-directories-files-by-modification-date
    (setq file-list-sorted
          (mapcar #'car
                  (sort file-list
                        #'(lambda (x y) (time-less-p (nth 6 y) (nth 6 x))))))

    ;; use ivy to select start-file
    (setq start-file (ivy-read
                      (concat "Move selected file to " target-dir ":")
                      file-list-sorted
                      :re-builder #'ivy--regex
                      :sort nil
                      :initial-input nil))

    ;; add full path to start file and end-file
    (setq start-file-full
          (expand-file-name start-file bianbin/conference-image-dir))
    ;; generate target file name from current org section
    ;; (setq file-ext (file-name-extension start-file t))

    ;; my phone app doesn't add an extension to the image so I do it
    ;; here. If you want to keep the existing extension then use the
    ;; line above
    (setq file-ext ".jpg")
    ;; get section heading and clean it up
    (setq end-file-base (s-downcase (s-dashed-words (nth 4 (org-heading-components)))))
    ;; shorten to first 40 chars to avoid long file names
    (setq end-file-base (s-left 40 end-file-base))
    ;; number to append to ensure unique name
    (setq file-number 1)
    (setq end-file (concat
                    end-file-base
                    (format "-%s" file-number)
                    file-ext))

    ;; increment number at end of name if file exists
    (while (file-exists-p end-file)
      ;; increment
      (setq file-number (+ file-number 1))
      (setq end-file (concat
                      end-file-base
                      (format "-%s" file-number)
                      file-ext))
      )

    ;; final file name including path
    (setq end-file-full
          (expand-file-name end-file target-dir))
    ;; rename file
    (rename-file start-file-full end-file-full)
    (message "moved %s to %s" start-file-full end-file)
    ;; insert link
    (insert (org-make-link-string (format "file:%s" end-file)))
    ;; display image
    (org-display-inline-images t t)))
