(setq org-agenda-columns t
        org-agenda-tags-column -50
        org-agenda-include-deadlines t
        org-agenda-compact-blocks t
        org-agenda-block-seperator t
        org-agenda-span 5
        org-agenda-window-setup 'current-window
        ;; AGENDA LOG
        org-agenda-start-with-log-mode t
        org-agenda-log-done 'note
        org-agenda-log-into-drawer t
        ;; TIME GRID
        org-agenda-use-time-grid t
        org-agenda-include-diary t
        org-agenda-skip-scheduled-if-done t
        org-agenda-skip-deadline-if-done t
        org-agenda-time-grid (quote ((daily today remove-match)
                                     (0600 0800 1000 1200 1400 1600 1800)
                                     "      " "................"))
        ;; org-agenda-custom-commands '(("c" "Simple agenda view" agenda ""))

        )
;; (org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))

(when (eq system-type 'gnu/linux) (require 'org-super-agenda))

(when (eq system-type 'gnu/linux)
  (use-package org-super-agenda
  :ensure t
  :config
    (org-super-agenda-mode 1)
    (setq org-super-agenda-groups
          '((:name "TIDSPLAN     ==================================================================="
                   :time-grid t)
            (:name "SORTERING    ==================================================================="
                   :todo "TODO")
            (:name "Marked       ==================================================================="
                   :todo "TODO"
                   :tag ("hydrogen" "coal")
            (:name "INFORMATIKK  ==================================================================="
                   :tag ("informatikk" "emacs" "git" "linux" "scheme" "python"))
            (:name "SAMFUNN      ==================================================================="
                   :tag ("samfunn" "økonomi"))
            (:name "Jobb" :tag ("power_bi" "excel"))
            (:discard (:tag "ikke_kal"))))))
