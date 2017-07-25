;;; org-web-tools-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "org-web-tools" "org-web-tools.el" (22903 23717
;;;;;;  0 0))
;;; Generated autoloads from org-web-tools.el

(autoload 'org-web-tools-insert-link-for-url "org-web-tools" "\
Insert Org link to URL using title of HTML page at URL.
If URL is not given, look for first URL in the kill-ring.

\(fn URL)" t nil)

(autoload 'org-web-tools-insert-web-page-as-entry "org-web-tools" "\
Insert web page contents of URL as Org sibling entry.
Page is processed with `eww-readable'.

\(fn URL)" t nil)

(autoload 'org-web-tools-read-url-as-org "org-web-tools" "\
Read URL's readable content in an Org buffer.

\(fn URL)" t nil)

(autoload 'org-web-tools-convert-url-list-to-page-entries "org-web-tools" "\
Convert list of URLs into Org entries containing page content.
Page content is processed with `eww-readable'.  All URLs in the
current entry (i.e. this does not look deeper in the subtree, or
outside of it) will be converted.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; org-web-tools-autoloads.el ends here
