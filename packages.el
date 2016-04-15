;;; Code:

(defvar jekyll-packages
  '(
    (hyde :location (recipe :fetcher github
                            :repo "nibrahim/Hyde"
                            :branch "master"))))

(defun jekyll/init-hyde ()
  (use-package hyde
    :config
    (progn
      (evilified-state-evilify hyde/hyde-mode hyde-mode-map
        (kbd "n") 'hyde/new-post
        (kbd "c") 'hyde/hyde-commit-post
        (kbd "g") 'hyde/load-posts
        (kbd "d") 'hyde/delete-post
        (kbd "p") 'hyde/promote-to-post
        (kbd "q") 'hyde/quit
        (kbd "RET") 'hyde/open-post-maybe))))

;;; packages.el ends here
