(setq org-agenda-columns t
        org-agenda-tags-column -100
        org-agenda-include-deadlines t
        org-agenda-compact-blocks t
        org-agenda-block-seperator t
        org-agenda-span 5
        org-agenda-window-setup 'other-window
        ;; agenda log
        org-agenda-start-with-log-mode t
        org-agenda-log-done 'note
        org-agenda-log-into-drawer t
              ;; time grid
        org-agenda-include-diary t
        org-agenda-skip-scheduled-if-done t
        org-agenda-skip-deadline-if-done t
        org-agenda-use-time-grid t
        org-agenda-sticky t
        org-agenda-time-grid (quote ((daily today remove-match)
                                     (0600 0800 1000 1200 1400 1600 1800)
                                     "      " "................")))
(add-hook 'after-init-hook 'org-agenda-list)

(require 'org-super-agenda)
(use-package org-super-agenda
  :ensure t
  :config
  (org-super-agenda-mode 1)
  (setq org-super-agenda-groups
        '((:name "tidsplan     ========================================================================================"
               :time-grid t)

          (:name "sortering    ========================================================================================"
               :todo "TODO")
          (:name "bearbeiding  ========================================================================================"
               :todo "NEXT")
          (:name "dataoppdatering ====================================================================================="
               :todo "DATA")
          (:name "presentasjoner ======================================================================================"
                 :todo "PRES")
          (:name "balanse      ========================================================================================"
                 :todo "BAL")
          (:name "marked       ========================================================================================"
               :todo "TODO"
               :tag ("coal" "hydrogen"))
          (:name "informatikk  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
               :tag ("informatikk" "emacs" "git" "linux" "scheme" "python"))
          (:name "samfunnsfag  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
                 :tag ("samfunn" "økonomi"))
          )))
