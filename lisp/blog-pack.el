;;; blog-pack.el --- Blog with org-mode and jekyll/github

;;; Commentary:

;;; Code:

y(require-package 'org2jekyll
                  :defer 3
                  :config
                  (custom-set-variables '(org2jekyll-blog-author       "KevinBean")
                                        '(org2jekyll-source-directory  (expand-file-name "~/文档2017/CloudStation/org/blog"))
                                        '(org2jekyll-jekyll-directory  (expand-file-name "~/文档2017/CloudStation/org/KevinBean.github.io/"))
                                        '(org2jekyll-jekyll-drafts-dir "")
                                        '(org2jekyll-output-directory  "~/文档2017/CloudStation/org/KevinBean.github.io/_posts/")
                                        '(org-publish-project-alist
                                          `(("blog"
                                             :base-directory ,(org2jekyll-source-directory)
                                             :base-extension "org"
                                             ;; :publishing-directory "/ssh:user@host:~/html/notebook/"
                                             :publishing-directory ,(org2jekyll-output-directory)
                                             :publishing-function org-html-export-to-html
                                             :headline-levels 4
                                             :section-numbers nil
                                             :with-toc nil
                                             :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
                                             :html-preamble t
                                             :recursive t
                                             :make-index t
                                             :html-extension "html"
                                             :body-only t)

                                            ("post"
                                             :base-directory ,(org2jekyll-source-directory)
                                             :base-extension "org"
                                             :publishing-directory ,(org2jekyll-output-directory org2jekyll-jekyll-posts-dir)
                                             :publishing-function org-html-export-to-html
                                             :headline-levels 4
                                             :section-numbers nil
                                             :with-toc nil
                                             :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
                                             :html-preamble t
                                             :recursive t
                                             :make-index t
                                             :html-extension "html"
                                             :body-only t)

                                            ("images"
                                             :base-directory ,(org2jekyll-source-directory "img")
                                             :base-extension "jpg\\|gif\\|png"
                                             :publishing-directory ,(org2jekyll-output-directory "img")
                                             :publishing-function org-publish-attachment
                                             :recursive t)

                                            ("js"
                                             :base-directory ,((org2jekyll-source-directory "js")
                                                               :base-extension "js"
                                                               :publishing-directory ,(org2jekyll-output-directory "js")
                                                               :publishing-function org-publish-attachment
                                                               :recursive t)

                                             ("css"
                                              :base-directory ,(org2jekyll-output-director "css")
                                              :base-extension "css\\|el"
                                              :publishing-directory ,(org2jekyll-output-directory "css")
                                              :publishing-function org-publish-attachment
                                              :recursive t)

                                             ("web" :components ("images" "js" "css"))))))

                  (provide 'blog-pack)
;;; blog-pack.el ends here
