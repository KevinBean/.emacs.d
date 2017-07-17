(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(newsticker-url-list
   (quote
    (("emacs planet" "http://planet.emacsen.org/atom.xml" nil nil nil))))
 '(org-agenda-files
   (quote
    ("~/Documents/2017/CloudStation/org/临时.org" "~/Documents/2017/CloudStation/org/life/生活.org" "~/Documents/2017/CloudStation/org/learn/学习.org" "~/Documents/2017/CloudStation/org/career/bjdl/北京电力.org" "~/Documents/2017/CloudStation/org/career/business/business.org" "~/Documents/2017/CloudStation/org/career/newcareer/newlife.org" "~/Documents/2017/CloudStation/org/gtd/task2017.org")))
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file+headline "~/Documents/2017/CloudStation/org/gtd/task2017.org" "Captured")
      "** TODO %?

" :clock-resume t)
     ("d" "dairy" entry
      (file+headline "~/Documents/2017/CloudStation/org/gtd/task2017.org" "dairy")
      "** %? %T


" :clock-resume t)
     ("i" "idea" entry
      (file+headline "~/Documents/2017/CloudStation/org/gtd/idea/idea.org" "NewIdea")
      "** %?"))))
 '(org-drill-scope (quote agenda))
 '(org-modules
   (quote
    (org-docview org-info org-irc org-mhe org-rmail org-w3m org-collector org-drill org-eshell)))
 '(org2jekyll-blog-author "KevinBean")
 '(package-selected-packages
   (quote
    (org-capture org-drill-table ox-jekyll org2jekyll jedi color-theme-modern deft org-brain osx-dictionary youdao-dictionary google-translate po-mode slideview org-export-as-s5 taskjuggler-mode ox-taskjuggler ox-ioslide org-beautify-theme ox-pandoc org-plus-contrib yasnippet yari yaml-mode yagist whole-line-or-region whitespace-cleanup-mode wgrep vc-darcs unfill undo-tree tidy textile-mode tagedit switch-window sql-indent smex smarty-mode slime-company skewer-less session scss-mode scratch sass-mode ruby-hash-syntax rspec-mode robe rinari regex-tool redshank rainbow-mode rainbow-delimiters projectile-rails project-local-variables pip-requirements php-mode paredit-everywhere osx-location origami org-pomodoro org-mac-iCal org-fstree org-cliplink nlinum mwe-log-commands multiple-cursors move-dup mmm-mode markdown-mode magit-gh-pulls lua-mode lively less-css-mode ledger-mode json-mode js-comint ipretty intero indent-guide immortal-scratch ibuffer-vc htmlize hl-sexp hippie-expand-slime hindent highlight-symbol highlight-quoted highlight-escape-sequences hayoo guide-key grab-mac-link goto-gem gnuplot gitignore-mode github-issues github-clone gitconfig-mode git-timemachine git-messenger git-blamed fullframe flycheck-package flycheck-ledger flycheck-elm flycheck-clojure fill-column-indicator expand-region exec-path-from-shell erlang elm-mode elisp-slime-nav elein dsvn disable-mouse dired-sort dired+ diminish diff-hl default-text-scale dashboard darcsum csv-nav csv-mode css-eldoc crontab-mode counsel company-quickhelp company-anaconda color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode cljsbuild-mode cl-lib-highlight cask-mode bundler bug-reference-github browse-kill-ring browse-at-remote avy auto-org-md auto-compile anzu aggressive-indent)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
