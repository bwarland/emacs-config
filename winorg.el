(require 'org-super-agenda)


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
                 (:discard (:tag "ikke_kal")))))
