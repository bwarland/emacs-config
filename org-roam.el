  (use-package org-roam
    :ensure t
    :init
    (setq org-roam-v2-ack t)
    :custom
    (org-roam-directory "~/GitHub/Notater/org-roam")
    (org-roam-completion-everywhere t)
    ;; (org-roam-dailies-directory "~/GitHub/Notater/daglig/")
    :bind (("C-c n l" . org-roam-buffer-toggle)
           ("C-c n f" . org-roam-node-find)
           ("C-c n i" . org-roam-node-insert)
           ("C-c n g" . org-roam-node-graph)
           ("C-c n c" . org-roam-capture)
           ("C-c b t" . org-roam-buffer-toggle)
	   ("C-c d s" . org-roam-db-sync)
	   ("C-c n j" . org-roam-dailies-capture-today)
	   :bind
	   ("C-M-i" . completion-at-point)
           )
    :config
    (org-roam-setup)
    (org-roam-db-autosync-mode)
    (require 'org-roam-protocol))
  ;; (require 'company-org-roam)
