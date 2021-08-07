(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/GitHub/Notater/org-roam")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n g" . org-roam-node-graph)
         ("C-c n c" . org-roam-capture)
         ;; )"C-c b t" . org-roam-buffer-toggle)
         )
  :config
  (org-roam-setup))
(require 'org-roam-protocol)
;; (require 'company-org-roam)
