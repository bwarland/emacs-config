  (setq package-enable-at-startup nil)
  (package-initialize)
  (cond ((eq system-type 'windows-nt) (setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/"))))
        ((eq system-type 'gnu/linux) (setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
                                                              ;; ("marmalade" . "https://marmalade-repo.org/packages/")
                                                              ("org" . "https://orgmode.org/elpa/")
                                                              ("melpa" . "https://melpa.org/packages/")
                                                            ))))

  (eval-when-compile
    (require 'use-package))

  (setq use-package-always-ensure t
        ;; use-package-always-ensure t
        use-package-verbose nil
        use-package-expand-minimally t
        use-package-enable-imenu-support t
      
        )

  (unless (package-installed-p 'quelpa)
    (with-temp-buffer
      (url-insert-file-contents "https://raw.GitHubusercontent.com/quelpa/quelpa/master/quelpa.el")
      (eval-buffer)
      (quelpa-self-upgrade)))
  ;; (quelpa '(discover-my-major :fetcher git :url "https://GitHub.com/l3kn/org-fc"))

  (use-package auto-package-update
    :defer t
    :custom
    (auto-package-update-interval 14)
    (auto-package-update-prompt-before-update t)
    (auto-package-update-hide-results t)
    :config
    (auto-package-update-maybe)
    (auto-package-update-at-time "09:00")
    )

  (defun load-dot-emacs ()
    (interactive)
    (load-file "~/.emacs")
    (princ "dot-emacs has loaded"))
  (global-set-key (kbd "C-x <f1>") 'load-dot-emacs)
