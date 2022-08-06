(use-package perspective
  :ensure t
  :bind (("C-x k" . persp-kill-buffer*)
	 ("C-x C-b" . persp-list-buffers)
	 ("C-x C-a" . persp-add-buffer)
	 ("C-x C-A" . persp-set-buffer)
	 ;; ("C-x C-x n" . persp-next)
	 ;; ("C-x C-x p" . persp-prev)
	 ("C-x <right>" . persp-next)
	 ("C-x <left>" . persp-prev)
	 ("C-x x s" . persp-switch)
	 )
  :init
  (persp-mode))
