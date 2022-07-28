(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/GitHub/Notater/org-roam")
  ;; (org-roam-completion-everywhere t)
  (org-roam-dailies-directory "~/GitHub/Notater/daglig/")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
	 ("C-c n a" . org-roam-alias-add)
	 ;; ("C-c n r" . org-roam-alias-remove)
	 ("C-c n A" . org-roam-ref-add)
	 ("C-c n R" . org-roam-ref-remove)
	 ("C-c n g" . org-roam-node-graph)
         ("C-c n c" . org-roam-capture)
	 ("C-c n r" . org-roam-node-random)
         ("C-c b t" . org-roam-buffer-toggle)
	 ("C-c d s" . org-roam-db-sync)
	 ("C-c n j" . org-roam-dailies-capture-today)
	 ("C-c n k" . org-roam-dailies-goto-date)
	 :map org-mode-map
	 ("C-M-i" . completion-at-point)
	 ("C-c n o" . org-id-get-create)
         ("C-c n t" . org-roam-tag-add)
	 )
  :custom
   (org-roam-capture-templates
   '(
     ("b" "Bøker" plain
      "* beskrivelse\n** hva?\n** hvorfor?\n** hvordan?\n* relatert\n- \n* kilder [/]\n- [ ] >%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unnarrowed t)
     ("d" "Default" plain
      "* beskrivelse\n* relatert\n- \n* kilder [/]\n- [ ] >%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unnarrowed t)
     ("l" "Liquefaction" plain
      "* beskrivelse\n[[id:6b442a80-5cb2-4f6b-a265-3962d93a1e0a][LNG-anlegg]] i .. med kapasitet på ...  mtpa over ... tog.\n* relatert\n- \n* kilder [/]\n- [ ] >%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unnarrowed t)
     ("r" "Raffineri" plain
      "* beskrivelse\n[[id:672f32f5-2b41-4c62-bc48-53a458231609][raffineri]] i ... med kapasitet på\n* relatert\n- \n* kilder [/]\n- [ ] >%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unnarrowed t)
     ("R" "Regas" plain
      "* beskrivelse\n[[id:557e0fe8-3c1f-4fae-b4a7-29471bc4058b][LNG-import]]... i  med kapasitet på ... bcma.\n* relatert\n- \n* kilder [/]\n- [ ] >%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unnarrowed t)
     ;; ("l" "programming language" plain
     ;;  "* Characteristics\n\n- Family: %?\n- Inspired by: \n\n* Reference:\n\n"
     ;;  :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
     ;;  :unnarrowed t)
     ))
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode)
  ;; (setq org-roam-mode-section-functions
  ;; 	(list #'org-roam-backlinks-section
  ;; 	      #'org-roam-reflinks-section))
  (require 'org-roam-protocol))

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
;; (use-package graphviz-dot-mode
;;   :ensure t)
;; (require 'company-org-roam)

(use-package deft
    :config
    (setq deft-directory org-roam-directory;;org-directory
          deft-recursive t
          deft-strip-summary-regexp ":PROPERTIES:\n\\(.+\n\\)+:END:\n"
          deft-use-filename-as-title t)
    :bind
    ("C-c n d" . deft)
    ("C-c <f9>" . deft-filter))
