(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory (file-truname "~/GitHub/Notater/org-roam"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n g" . org-roam-node-graph)
	 ("C-c n c" . org-roam-capture)
	 )
  :config
  (org-roam-setup))
