(use-package perspective
  :ensure t
  :bind (("C-x k" . persp-kill-buffer*)
	 ("C-x x n" . persp-next)
	 ("C-x x p" . persp-prev)
	 ("C-x x s" . persp-switch)
	 )
  :init
  (persp-mode))
