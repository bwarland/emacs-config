(use-package helm
  :ensure t
  :bind (
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x f" . helm-recentf)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x b" . helm-buffers-list)	;
	 ("C-x c y" . helm-yas-complete)
	 ("C-x c Y" . helm-yas-create-snippet-on-region)
	 ("C-c h o" . helm-occur)
	 ("C-c h x" . helm-register)
	 ("C-c <f9>" . helm-calcul-expression)
	 ("C-c <f1>" . helm-colors)
	 ;; ("M-p" . helm-previous-line)
	 ;; ("M-k" . helm-next-line)
	 ;; ("M-I" . helm-previous-page)
	 ;; ("M-K" . helm-next-page)
	 ;; ("M-h" . helm-beginning-of-buffer)
	 ;; ("M-H" . helm-end-of-buffer)
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

(use-package swiper-helm
  :ensure t
  :bind ("C-s" . swiper-helm))
