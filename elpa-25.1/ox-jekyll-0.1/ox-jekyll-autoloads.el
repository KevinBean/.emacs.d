;;; ox-jekyll-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "ox-jekyll" "ox-jekyll.el" (22805 22007 0 0))
;;; Generated autoloads from ox-jekyll.el

(autoload 'org-jekyll-export-subtree-as-html "ox-jekyll" "\
Export current subtree to a HTML buffer adding some YAML front matter.

\(fn &optional ASYNC VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-jekyll-export-as-html "ox-jekyll" "\
Export current buffer to a HTML buffer adding some YAML front matter.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-jekyll-export-to-html "ox-jekyll" "\
Export current buffer to a HTML file adding some YAML front matter.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-jekyll-publish-to-html "ox-jekyll" "\
Publish an org file to HTML with YAML front matter.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(autoload 'org-jekyll-insert-export-options-template "ox-jekyll" "\
Insert a settings template for Jekyll exporter.

\(fn &optional TITLE DATE SETUPFILE CATEGORIES PUBLISHED LAYOUT)" t nil)

;;;***

;;;### (autoloads nil nil ("ox-jekyll-pkg.el") (22805 14297 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ox-jekyll-autoloads.el ends here
