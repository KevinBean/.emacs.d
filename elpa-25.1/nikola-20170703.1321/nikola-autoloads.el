;;; nikola-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "nikola" "nikola.el" (22888 64146 0 0))
;;; Generated autoloads from nikola.el

(autoload 'nikola-init "nikola" "\
Create a default site and opens the file conf.py to edit it.

\(fn)" t nil)

(autoload 'nikola-new-post "nikola" "\
Creates a new post on nikola-output-root-directory/posts/ and opens it.

\(fn)" t nil)

(autoload 'nikola-new-page "nikola" "\
Creates a new page on nikola-output-root-directory/stories/.

\(fn)" t nil)

(autoload 'nikola-build "nikola" "\
Build the site.

\(fn)" t nil)

(autoload 'nikola-webserver-start "nikola" "\
Start webserver.

\(fn)" t nil)

(autoload 'nikola-webserver-stop "nikola" "\
Stops the webserver.

\(fn)" t nil)

(autoload 'nikola-deploy "nikola" "\
Deploys the site.

\(fn)" t nil)

(autoload 'nikola-version "nikola" "\
Show nikola and nikola.el version.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; nikola-autoloads.el ends here
