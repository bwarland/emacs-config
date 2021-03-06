(use-package org
  :mode (("\\.org$" . org-mode))
  :hook (org-mode . org-bullets-mode)
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
  (setq initial-major-mode 'org-mode
	org-hide-leading-stars t
	org-startup-indented t
	org-startup-folded t
	org-pretty-entities t
	org-pretty-entities-include-sub-superscripts t
	org-treat-s-cursor-todo-selection-as-state-change nil
	org-directory "~/GitHub"
	org-reverse-note-order nil
	org-refile-use-outline-path t
	org-outline-path-complete-in-steps nil
	org-refile-allow-creating-parent-nodes (quote confirm)
	org-indirect-buffer-display 'current-window
	org-hide-emphasis-markers t
	org-tags-column -50
	org-ellipsis " ..."
                  ))

  (cond ((eq system-type 'windows-nt) (setq org-archive-location "~/c:users/bjorwa/Documents/org-arkiv/arkiv.org::* task"))
        ((eq system-type 'gnu/linux) (setq org-archive-location "~/Documents/org-arkiv/arkiv.org::* task")))

(cond ((eq system-type 'windows-nt) (setq default-directory "~/c:users/bjorwa/documents/GitHub/"))
      ((eq system-type 'gnu/linux) (setq default-directory "~/GitHub/")))

    (let ((wp "~/:c/users/bjorwa/documents/GitHub/Markedsanalyse/journaler/")
          (lp "~/GitHub/Markedsanalyse/journaler/"))
      (cond ((eq system-type 'windows-nt)
             (setq org-refile-targets (quote (((concat wp "arkiv.org") :maxlevel . 2)
                                              ((concat wp "liq.org") :maxlevel . 4)
                                              ((concat wp "reg.org") :maxlevel . 4)
                                              ((concat wp "master-energi.org.org") :maxlevel . 4)))))
            ((eq system-type 'gnu/linux)
             (setq org-refile-targets (quote (((concat lp "arkiv.org") :maxlevel . 2)
                                              ((concat lp "liq.org") :maxlevel . 4)
                                              ((concat lp "reg.org") :maxlevel . 4)
                                              ((concat lp "master-energi.org.org") :maxlevel . 4)))))))
  (advice-add 'org-refile :after 'org-save-all-org-buffers)

  ;; (require 'org-fc-hydra)

(cond ((eq system-type 'windows-nt)
       (setq org-capture-templates
             (quote (
                     ("d" "drill/emner")
                     ("db" "powerbi" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "powerbi")
                      "** %? :drill:power_bi:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dd" "database" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "database")
                      "** %? :drill:db:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("de" "emacs config" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "emacs")
                      "** %? :drill:emacs:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dg" "GitHub" entry (file+olp "~/c:/users/bjorwa/documents/GitHub/Notater/informatikk.org" "git")
                      "** %? :drill:git:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("di" "informatikk" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "informatikk")
                      "** %? :drill:informatikk:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dl" "linux" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "linux")
                      "** %? :drill:linux:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dn" "numpy" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "numpy")
                      "** %? :drill:python:\n:drill_card_type: twosided\n:end:\n# ")
                     ("do" "office" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "office")
                      "** %? :drill:office:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dp" "pandas" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "pandas")
                      "** %? :drill:python:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dp" "python" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "python")
                      "** %? :drill:python:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dr" "racket" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "racket")
                      "** %? :drill:scheme:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dx" "excel" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/informatikk.org" "racket")
                      "** %? :drill:excel:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("f" "fortelling og retorikk")
                     ("ff" "fortelling" entry (file+olp "~c:/users/bjorwa/documents/GitHub/Notater/forret.org" "fortelling")
                      "* %?\n")
                     ("fr" "retorikk" entry (file+olp "~c:/users/bjorwa/documents/GitHub/Notater/forret.org" "retorikk")
                      "* %?\n")
                     ("h" "handling/gjøremål")
                     ("hg" "gjøremål" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/moeter.org" "gjøremål")
                      "* todo %?\n%^t")
                     ("hm" "møter" entry (file+olp "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/moeter.org" "møter")
                      "* %?\n%^t")
                     ("j" "Journal/føring")
                     ("jd" "dagbok" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub//GitHub/Journal/dagbok.org")
                      "* %?\n")
                     ("jf" "fundamentals" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub//GitHub/Markedsanalyse/journaler/fundamentals.org")
                      "* %?\nhjlink")
                     ("jF" "ferdigheter" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/ferdigheter.org")
                      "* %?\n")
                     ("jj" "Journal" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub//GitHub/Markedsanalyse/journaler/Journal.org")
                      "* %?\nhjlink")
                     ("jr" "retorikk og kommunikasjon" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub/Journal/retorikk.org")
                      "* %?\n")
                     ("jø" "økonomi" entry (file+datetree+prompt "~/c:/users/bjorwa/documents/GitHub//GitHub/Notater/econ.org")
                      ("t" "tabell")
                      ("th" "handel" table-line (file+headline "~/notebook/markedsvurdering.org" "dagsrapport" "handel")
                       "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|")
                      "* %?\n"))))
       )
      ((eq system-type 'gnu/linux)
       (setq org-capture-templates
             (quote (
                     ("d" "drill")
                     ("db" "powerbi" entry (file+olp "~/GitHub/Notater/informatikk.org" "powerbi")
                      "** %? :drill:power_bi:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dd" "database" entry (file+olp "~/GitHub/Notater/informatikk.org" "database")
                      "** %? :drill:db:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("de" "emacs config" entry (file+olp "~/GitHub/Notater/informatikk.org" "emacs")
                      "** %? :drill:emacs:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dg" "GitHub" entry (file+olp "~/GitHub/Notater/informatikk.org" "git")
                      "** %? :drill:git:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("di" "informatikk" entry (file+olp "~/GitHub/Notater/informatikk.org" "informatikk")
                      "** %? :drill:informatikk:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dl" "linux" entry (file+olp "~/GitHub/Notater/informatikk.org" "linux")
                      "** %? :drill:linux:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dn" "numpy" entry (file+olp "~/GitHub/Notater/informatikk.org" "numpy")
                      "** %? :drill:python:\n:drill_card_type: twosided\n:end:\n# ")
                     ("do" "office" entry (file+olp "~/GitHub/Notater/informatikk.org" "office")
                      "** %? :drill:office:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dp" "pandas" entry (file+olp "~/GitHub/Notater/informatikk.org" "pandas")
                      "** %? :drill:python:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dp" "python" entry (file+olp "~/GitHub/Notater/informatikk.org" "python")
                      "** %? :drill:python:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dr" "racket" entry (file+olp "~/GitHub/Notater/informatikk.org" "racket")
                      "** %? :drill:scheme:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("ds" "samfunn" entry (file+olp "~/GitHub/Notater/samfunndrill.org" "begreper")
                      "** %? :drill:samfunn:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("dx" "excel" entry (file+olp "~/GitHub/Notater/informatikk.org" "racket")
                      "** %? :drill:excel:\n:properties:\n:drill_card_type: twosided\n:end:\n# ")
                     ("f" "fortelling")
                     ("ff" "fortelling" entry (file+olp "~/GitHub/Notater/forret.org" "fortelling")
                      "* %?\n")
                     ("fr" "retorikk" entry (file+olp "~/GitHub/Notater/forret.org" "retorikk")
                      "* %?\n")
                     ("h" "handling")
                     ("hg" "gjøremål" entry (file+olp "~/GitHub/Notater/moeter.org" "gjøremål")
                      "* todo %?\n%^t")
                     ("hm" "møter" entry (file+olp "~/GitHub/Notater/moeter.org" "møter")
                      "* %?\n%^t")
                     ("j" "Journal")
                     ("jd" "dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
                      "* %?\n")
                     ("jf" "fundamentals" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/fundamentals.org")
                      "* %?\nhjlink")
                     ("jF" "ferdigheter" entry (file+datetree+prompt "~/GitHub/Notater/ferdigheter.org")
                      "* %?\n")
                     ("jj" "Journal" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/journal.org") ;
                      "* TODO %?\nhjlinks")
                     ("jr" "retorikk" entry (file+datetree+prompt "~/GitHub/Journal/retorikk.org")
                      "* %?\n")
                     ("js" "samfunn" entry (file+datetree+prompt "~/GitHub/Journal/samfunn.org")
                      "* %?\n")
                     ("jt" "trening" entry (file+datetree+prompt "~/GitHub/Journal/trening.org")
                      "* %?\n")
                     ("jø" "økonomi" entry (file+datetree+prompt "~/GitHub/Journal/econ.org")
                      "* %?\n")
                     ("t" "tabell")
                     ("ta" "price quote agencies" table-line (file+olp "~/GitHub/Markedsanalyse/journaler/LNG-daglig.org" "lng")
                      "|%^u|%^{platts}|%^{argus}|%^{icis}|" :prepend t)
		     ("th" "handel" table-line (file+olp "~/notebook/markedsvurdering.org" "dagsrapport" "handel")
		      "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{sted}|%^{antall}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|" :prepend t)
		     ("tj" "JKM structure" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\LNG-daglig.org" "LNG" "JKM-structure")
		      "|%^u|%^{FM}|%^{p1}|%^{p2}|%^{p3}|%^{p4}|%^{comment}|" :prepend t)
		     ("tk" "kontrakt" entry (file+olp "~/notebook/termin.org" "termin")
		      "* %?\nzzkon" :prepend t)
		     ("tp" "tender: purchase" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\LNG-daglig.org" "LNG" "Tender: purchase")
		      "| %^u |%^{buyer}|%^{location}|%^{number vessels}|%^{period month}|%^{term}|%^{source}|%^{comment}|" :prepend t)
		     ("ts" "tender: sale" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\LNG-daglig.org" "LNG" "Tender: sale")
		      "| %^u |%^{seller}|%^{location}|%^{number vessels}|%^{period month}|%^{term}|%^{source}|%^{comment}|" :prepend t)
                     ("tt" "trening" table-line (file+headline "~/GitHub/Journal/trening.org" "tabell")
                      "|%^u|%^{type}|%^{oppvarming}|%^{runder}|%^{vekt}|%^{tid}|%^{kommentar}|")
                     )))))

  (require 'org-tempo)
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("elt" . "src emacs-lisp :tangle"))
  (add-to-list 'org-structure-template-alist '("py" . "src python"))
  (add-to-list 'org-structure-template-alist '("pyt" . "src python :tangle"))
  (add-to-list 'org-structure-template-alist '("sr" . "src racket"))
  (add-to-list 'org-structure-template-alist '("srt" . "src racket :tangle"))

(org-babel-do-load-languages
 'org-babel-load-languages (quote ((emacs-lisp . t)
                                   (racket . t)
                                   (sqlite . t)
                                   (python . t))))
(setq org-babel-python-command "python3")

  (require 'org-drill)

  (use-package org-drill
    :ensure t
    ;; https://gitlab.com/phillord/org-drill/
    :config
    (setq org-drill-maximum-duration 20
          org-drill-spaced-repetition-algorithm 'sm2
          org-drill-add-random-noise-to-intervals-p t
          org-drill-adjust-intervals-for-early-and-late-repetitions-p t))
