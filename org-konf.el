(use-package org
  :mode (("\\.org$" . org-mode))
  :hook (org-mode . org-bullets-mode)
  :init
  (setq ;; UTSEENDE
          ;; ===================
   org-hide-leading-stars t
   org-startup-indented t
   org-startup-folded t
   initial-major-mode 'org-mode
   org-pretty-entities t
   org-pretty-entities-include-sub-superscripts nil
   org-use-fast-todo-selection t
   org-treat-s-cursor-todo-selection-as-state-change nil
   org-directory "~/GitHub"
   org-reverse-note-order nil
   org-refile-use-outline-path t 
   org-outline-path-complete-in-steps nil
   org-refile-allow-creating-parent-nodes (quote confirm)
   org-indirect-buffer-display 'current-window
   org-hide-emphasis-markers t
   org-tags-column -50
   org-hide-emphasis-marker t
   ;; org-list-allow-alphabetcial t
   org-ellipsis " ..."
   org-archive-location "~/Documents/org-arkiv/arkiv.org::* TASK"
   org-todo-keywords (quote (
                             (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
                             ;; (sequence "jour(j)" "fund(f)")
                             ))

   org-todo-keyword-faces (quote (("jour" :foreground "red" :background "white")
                                         ;; ("fund" :foreground "blue" :background "white")
                                         ("TODO" :foreground "red" :background "white")
                                         ("NEXT" :foreground "blue" :background "white")
                                         ("DONE" :foreground "dark green" :background "white"))))
  :bind
  (("C-c o" . 'org-mode)
   ("C-c c" . 'org-capture)
   ("<f5>" . 'org-copy-subtree)
   ("C-c a" . 'org-agenda)
   ("C-c l" . 'org-store-link)
   ("C-c C-." . org-time-stamp)
   ("C-c C-t". 'org-todo)		;
   ("C-c t" . 'org-show-todo-tree)
   ("C-c C-w" . 'org-capture-refile)
   ("C-c C-k" . 'org-capture-kill))
  :config
  ;; (setq-default major-mode 'org-mode)
  )

(cond ((eq system-type 'windows-nt) (setq default-directory "~/C:Users/bjorwa/Documents/GitHub/"))
      ((eq system-type 'gnu/linux) (setq default-directory "~/GitHub/")))

(let ((window-path "~/:C/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/")
        (linux-path "~/GitHub/Markedsanalyse/journaler/"))
    (cond ((eq system-type 'windows-nt) (setq org-refile-targets (quote (((concat window-path "arkiv.org") :maxlevel . 2)
                                                                         ((concat window-path "liq.org") :maxlevel . 4)
                                                                         ((concat window-path "reg.org") :maxlevel . 4)
                                                                         ((concat window-path "master-energi.org.org") :maxlevel . 4)))))
          ((eq system-type 'gnu/linux) (setq org-refile-targets (quote (((concat linux-path "arkiv.org") :maxlevel . 2)
                                                                       ((concat linux-path "liq.org") :maxlevel . 4)
                                                                       ((concat linux-path "reg.org") :maxlevel . 4)
                                                                       ((concat linux-path "master-energi.org.org") :maxlevel . 4)))))))
(advice-add 'org-refile :after 'org-save-all-org-buffers)

(require 'org-fc-hydra)

(cond ((eq system-type 'windows-nt)
       (setq org-capture-templates
             (quote (
                     ("d" "drill/emner")
                     ("db" "PowerBI" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "PowerBI")
                      "** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dd" "Database" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Database")
                      "** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("de" "Emacs config" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Emacs")
                      "** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dg" "GitHub" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Git")
                      "** %? :drill:git:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("di" "Informatikk" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Informatikk")
                      "** %? :drill:informatikk:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dl" "Linux" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Linux")
                      "** %? :drill:linux:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dn" "Numpy" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Numpy")
                      "** %? :drill:python:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("do" "Office" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Office")
                      "** %? :drill:office:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dP" "Pandas" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Pandas")
                      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dp" "Python" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Python")
                      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dr" "Racket" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Racket")
                      "** %? :drill:scheme:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dx" "Excel" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Racket")
                      "** %? :drill:excel:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("f" "fortelling og retorikk")
                     ("ff" "fortelling" entry (file+olp "~C:/Users/bjorwa/Documents/GitHub/Notater/forret.org" "fortelling")
                      "* %?\n")
                     ("fr" "retorikk" entry (file+olp "~C:/Users/bjorwa/Documents/GitHub/Notater/forret.org" "retorikk")
                      "* %?\n")
                     ("h" "handling/gjøremål")
                     ("hg" "gjøremål" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/moeter.org" "gjøremål")
                      "* TODO %?\n%^t")
                     ("hm" "møter" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/moeter.org" "møter")
                      "* %?\n%^t")
                     ("j" "journal/føring")
                     ("jd" "Dagbok" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Journal/dagbok.org")
                      "* %?\n")
                     ("jf" "Fundamentals" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Markedsanalyse/journaler/fundamentals.org")
                      "* %?\nhjlink")
                     ("jF" "Ferdigheter" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/ferdigheter.org")
                      "* %?\n")
                     ("jj" "Journal" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Markedsanalyse/journaler/journal.org")
                      "* %?\nhjlink")
                     ("jr" "Retorikk og kommunikasjon" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Journal/retorikk.org")
                      "* %?\n")
                     ("jø" "Økonomi" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/econ.org")
                                     ("t" "tabell")
                     ("th" "handel" table-line (file+headline "~/notebook/markedsvurdering.org" "dagsrapport" "handel")
                      "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|")
                      "* %?\n"))))
       )
      ((eq system-type 'gnu/linux)
       (setq org-capture-templates
             (quote (
                     ("d" "drill")
                     ("db" "PowerBI" entry (file+olp "~/GitHub/Notater/informatikk.org" "PowerBI")
                      "** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dd" "Database" entry (file+olp "~/GitHub/Notater/informatikk.org" "Database")
                      "** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("de" "Emacs config" entry (file+olp "~/GitHub/Notater/informatikk.org" "Emacs")
                      "** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dg" "GitHub" entry (file+olp "~/GitHub/Notater/informatikk.org" "Git")
                      "** %? :drill:git:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("di" "Informatikk" entry (file+olp "~/GitHub/Notater/informatikk.org" "Informatikk")
                      "** %? :drill:informatikk:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dl" "Linux" entry (file+olp "~/GitHub/Notater/informatikk.org" "Linux")
                      "** %? :drill:linux:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dn" "Numpy" entry (file+olp "~/GitHub/Notater/informatikk.org" "Numpy")
                      "** %? :drill:python:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("do" "Office" entry (file+olp "~/GitHub/Notater/informatikk.org" "Office")
                      "** %? :drill:office:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dP" "Pandas" entry (file+olp "~/GitHub/Notater/informatikk.org" "Pandas")
                      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dp" "Python" entry (file+olp "~/GitHub/Notater/informatikk.org" "Python")
                      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dr" "Racket" entry (file+olp "~/GitHub/Notater/informatikk.org" "Racket")
                      "** %? :drill:scheme:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("ds" "Samfunn" entry (file+olp "~/GitHub/Notater/samfunndrill.org" "begreper")
                      "** %? :drill:samfunn:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("dx" "Excel" entry (file+olp "~/GitHub/Notater/informatikk.org" "Racket")
                      "** %? :drill:excel:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
                     ("f" "fortelling")
                     ("ff" "fortelling" entry (file+olp "~/GitHub/Notater/forret.org" "fortelling")
                      "* %?\n")
                     ("fr" "retorikk" entry (file+olp "~/GitHub/Notater/forret.org" "retorikk")
                      "* %?\n")
                     ("h" "handling")
                     ("hg" "gjøremål" entry (file+olp "~/GitHub/Notater/moeter.org" "gjøremål")
                      "* TODO %?\n%^t")
                     ("hm" "møter" entry (file+olp "~/GitHub/Notater/moeter.org" "møter")
                      "* %?\n%^t")
                     ("j" "journal")
                     ("jd" "Dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
                      "* %?\n")
                     ("jf" "Fundamentals" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/fundamentals.org")
                      "* %?\nhjlink")
                     ("jF" "Ferdigheter" entry (file+datetree+prompt "~/GitHub/Notater/ferdigheter.org")
                      "* %?\n")
                     ("jj" "Journal" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/journal.org")
                      "* %?\nhjlink")
                     ("jr" "Retorikk" entry (file+datetree+prompt "~/GitHub/Journal/retorikk.org")
                      "* %?\n")
                     ("js" "Samfunn" entry (file+datetree+prompt "~/GitHub/Journal/samfunn.org")
                      "* %?\n")
                     ("jt" "Trening" entry (file+datetree+prompt "~/GitHub/Journal/trening.org")
                      "* %?\n")
                     ("jø" "Økonomi" entry (file+datetree+prompt "~/GitHub/Journal/econ.org") 
                      "* %?\n")
                     ("t" "tabell")
                     ("ta" "price quote agencies" table-line (file+olp "~/GitHub/Markedsanalyse/journaler/daily-market-update.org" "LNG") 
                      "|%^u|%^{Platts}|%^{Argus}|%^{ICIS}|" :prepend t)
                     ("tt" "trening" table-line (file+headline "~/GitHub/Journal/trening.org" "Tabell")
                      "|%^u|%^{type}|%^{oppvarming}|%^{runder}|%^{vekt}|%^{tid}|%^{kommentar}|")
                     )))))

(require 'org-tempo)
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("elt" . "src emacs-lisp :tangle"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("pyt" . "src python :tangle"))
(add-to-list 'org-structure-template-alist '("sr" . "src racket"))
(add-to-list 'org-structure-template-alist '("srt" . "src racket :tangle"))

(require 'org-drill)

(use-package org-drill
  :ensure t
  ;; https://gitlab.com/phillord/org-drill/
  :config
  (setq org-drill-maximum-duration 20
        org-drill-spaced-repetition-algorithm 'sm2
        org-drill-add-random-noise-to-intervals-p t
        org-drill-adjust-intervals-for-early-and-late-repetitions-p t))

(org-babel-do-load-languages
 'org-babel-load-languages (quote ((emacs-lisp . t)
                                   (racket . t)
                                   (sqlite . t)
                                   (python . t))))
