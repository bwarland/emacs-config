(add-hook 'after-init-hook 'global-company-mode)
(use-package company
  :commands (company-mode
	     company-complete-common
	     company-complete-selection
	     helm-company)
  :init (setq company-minimum-prefix-length 3
	      company-require-match nil
	      company-selection-wrap-around t
	      company-dabbrev-downcase t
	      company-tooltip-limit 20
	      company-tooltip-minimum-width 15
	      company-tooltip-align-annotations 1)
  :config (setq company-idle-delay 1000
		company-minimum-prefix-length 3)
  (global-company-mode))

  (use-package helm
    :ensure t
    :bind (
           ;; ("M-x" . helm-m-x)
           ("C-x c-f" . helm-find-files)
           ("C-x f" . helm-recentf)
           ("M-y" . helm-show-kill-ring)
           ("C-x b" . helm-buffers-list)
           ("C-x c y" . helm-yas-complete)
           ("C-x c y" . helm-yas-create-snippet-on-region)
           ("C-c h o" . helm-occur)
           ("C-c h x" . helm-register)
           ("C-c <f9>" . helm-calcul-expression)
           ("C-c <f1>" . helm-colors)
           ("M-p" . helm-previous-line)
           ("M-k" . helm-next-line)
           ("M-i" . helm-previous-page)
           ("M-k" . helm-next-page)
           ("M-h" . helm-beginning-of-buffer)
           ("M-h" . helm-end-of-buffer)
           )
    :init
    (setq helm-buffers-lazy-matching t
          helm-recentf-fuzzy-match t
          helm-locate-fuzzy-match t
          helm-split-window-in-side-p t
          helm-lisp-fuzzy-completion t
          helm-autoresize-max-height 0
          helm-autoresize-min-height 20)
    :config
    (ido-mode -1)
    (helm-mode 1)
    (helm-autoresize-mode 1))
  (when (eq system-type 'gnu/linux) (use-package helm-ls-git
                                      :after helm
                                      :bind (("C-x c-d" . helm-browse-project)
                                             ("C-x r p" . helm-projects-history))))
(use-package helm-rg
  :ensure t
  :config
  ;; Add actions for inserting org file link from selected match
  (defun insert-org-mode-link-from-helm-result (candidate)
    (interactive)
    (with-helm-current-buffer
      (insert (format "[[file:%s][%s]]"
                      (plist-get candidate :file)
                      ;; Extract the title from the file name
                      (subst-char-in-string
                       ?_ ?\s
                       (first
                        (split-string
                         (first
                          (last
                           (split-string (plist-get candidate :file) "\\-")))
                         "\\.")))))))

  (helm-add-action-to-source "Insert org-mode link"
                             'insert-org-mode-link-from-helm-result
                             helm-rg-process-source))

(use-package swiper-helm
  :ensure t
  :bind ("C-s" . swiper-helm))
