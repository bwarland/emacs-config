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

  (setq org-id-track-globally t)
  (setq org-agenda-files (directory-files-recursively "~/GitHub/Notater/journaler/" "\\.org$"))

(cond ((eq system-type 'windows-nt) (setq default-directory "~/c:users/bjorwa/documents/GitHub/"))
      ((eq system-type 'gnu/linux) (setq default-directory "~/GitHub/")))

;; (let ((wp "~/:c/users/bjorwa/documents/GitHub/Markedsanalyse/journaler/")
;;       (lp "~/GitHub/Markedsanalyse/journaler/"))
(setq org-refile-targets (quote (("~/GitHub/Markedsanalyse/journaler/cn.org" :maxlevel . 5)
				 ("~/GitHub/Markedsanalyse/journaler/hydrogen.org" :maxlevel . 3))))

(advice-add 'org-refile :after 'org-save-all-org-buffers)

;; (let ((wp "~/:c/users/bjorwa/documents/GitHub/Markedsanalyse/journaler/")
;;       (lp "~/GitHub/Markedsanalyse/journaler/"))
;;   (cond ((eq system-type 'windows-nt)
;;          (setq org-refile-targets (quote (((concat wp "arkiv.org") :maxlevel . 2)
;;                                           ((concat wp "liq.org") :maxlevel . 4)
;;                                           ((concat wp "reg.org") :maxlevel . 4)
;;                                           ((concat wp "master-energi.org.org") :maxlevel . 4)))))
;;         ((eq system-type 'gnu/linux)
;;          (setq org-refile-targets (quote (((concat lp "arkiv.org") :maxlevel . 2)
;;                                           ((concat lp "liq.org") :maxlevel . 2)
;; 					  ((concat lp "cn.org") :maxlevel .3)
;; 					  ((concat lp "hydrogen.org") :maxlevel . 2)
;;                                           ((concat lp "reg.org") :maxlevel . 2)
;;                                           ((concat lp "master-energi.org.org") :maxlevel . 4)))))))
;; (advice-add 'org-refile :after 'org-save-all-org-buffers)

(setq org-capture-templates
      (quote (
              ("h" "handling")
	      ("hg" "gjøremål" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "ad-hoc")
	      "* TODO %?\n SCHEDULED: %^t")
	      ("hm" "møter" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "møter")
	       "* %?\n %^T--%^T")
              ("j" "Journal")
              ("jd" "dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
               "* %?\n")
	      ("jb" "biodrivstoff" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "biofuels")
	       "** %?\n ")
	      ("jc" "råolje" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "crude oil")
	       "%?\n%c ")
	      ("jh" "handelsflyt" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "tradeflow and fuel substitution")
	       "%?\n%c ")
	       ("jl" "lager" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "storage")
	       "%?\n%c ")
	      ("jo" "opex" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "opex")
	       "%?\n%c ")
	      ("jp" "produkter")
	      ("jpb" "bensin" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "gasoline")
	       "%?\n%c ")
	      ("jpd" "diesel" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "diesel")
	       "%?\n%c ")
	      ("jpf" "fyringsolje" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "fuel oil")
	       "%?\n%c ")
	      ("jpj" "jet" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "Jet")
	       "%?\n ")
	      ("jpl" "LPG" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "LPG")
	       "%?\n%c ")
	      ("jpn" "nafta" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Products" "Naphtha")
	       "%?\n%c ")
	      ("jr" "raffineri")
	      ("jrg" "Gjennomstrømning" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Refinery" "Throughput")
	       "%?\n%c ")
	      ("jrm" "marginer" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Refinery" "Margins")
	       "%?\n%c ")
	      ("jrn" "nedstengning" plain (file+olp "~/GitHub/Notater/møter/wmm.org" "Refinery" "Outage")
	       "%?\n%c ")
                     )))

  (org-babel-do-load-languages
   'org-babel-load-languages (quote ((emacs-lisp . t)
                                 ;;    (racket . t)
				     ;; (guile . t)
                                     (sqlite . t)
                                     (python . t)
				     (shell . t)
                                     ;; (ipython .t)
                                     )))
(setq org-babel-python-command "python3")
