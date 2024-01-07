  (setq org-agenda-columns t
        org-agenda-tags-column -100
        org-agenda-include-deadlines t
        org-agenda-compact-blocks t
        org-agenda-block-seperator t
        org-agenda-span 5
        org-agenda-window-setup 'other-window
        org-agenda-start-with-log-mode t
        org-agenda-log-done 'note
        org-agenda-log-into-drawer t
        org-agenda-include-diary t
        org-agenda-skip-scheduled-if-done t
	      org-agenda-skip-timestamp-if-done t
        org-agenda-skip-deadline-if-done t
	      org-agenda-skip-scheduled-if-deadline-is-shown t
	      org-agenda-skip-timestamp-if-deadline-is-shown t
        org-agenda-use-time-grid t
        org-agenda-sticky t
	      org-agenda-hide-tags-regexp ".*"
	      org-agenda-current-time-string ""
        org-agenda-time-grid (quote ((daily today remove-match)
                                     ()
                                     "" "")))
(setq org-agenda-prefix-format '(
				 (agenda . "  %?-2i %t ")
				 (todo . " %i %-12:c")
				 (tags . " %i %-12:c")
				 (search . " %i %-12:c")))
(add-hook 'after-init-hook 'org-agenda-list)

(require 'org-super-agenda)
(use-package org-super-agenda
  :ensure t
  :config
  (org-super-agenda-mode 1)
  (setq org-super-agenda-groups
        '((:name "TIDSPLAN"
                 :time-grid t)
          (:name "REPETISJON"
		       :tag "drill")
	  )))

(require 'org-modern)
(use-package org-modern
  :ensure t
  :hook
  (org-mode . global-org-modern-mode)
  :config
  (global-org-modern-mode t))
