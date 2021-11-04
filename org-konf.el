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
(require 'org-id)
(setq org-id-track-globally t)
(setq org-agenda-files (directory-files-recursively "~/GitHub/Notater/" "\\.org$"))

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

  ;; (require 'org-fc-hydra)

(setq org-capture-templates
      (quote (
              ("h" "handling")
              ("ha" "ad-hoc" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "ad-hoc")
               "* TODO %?\nSCHEDULED: %^t")
	      ("hb" "Power-Bi" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "prosjekter" "Power-BI")
	       "* TODO %?\nSCHEDULED: %^t")
	      ("he" "Emacs" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "prosjekter" "Emacs")
	       "* TODO %?\nSCHEDULED: %^t")
              ("hm" "møter" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "møter")
	       "* %?\nSCHEDULED: %^T--%^T")
	      ("hp" "Python" entry (file+olp "~/GitHub/Notater/journaler/frister.org" "prosjekter" "Python")
               "* TODO %?\nSCHEDULED: %^t")
              ("j" "Journal")
              ("jd" "dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
               "* %?\n")
              ("jf" "fundamentals" entry (file+datetree+prompt "~/GitHub/Notater/journaler/fundamentals.org")
               "* ...%?\n* European Gas\n* US Gas\n* Crude Oil")
              ("jF" "ferdigheter" entry (file+datetree+prompt "~/GitHub/Notater/ferdigheter.org")
               "* %?\n")
              ("jj" "Journal" entry (file+datetree+prompt "~/GitHub/Notater/journaler/journal.org") ;
               "* TODO %?\nSCHEDULED: %t")
              ("jr" "retorikk" entry (file+datetree+prompt "~/GitHub/Journal/retorikk.org")
               "* %?\n")
              ("js" "samfunn" entry (file+datetree+prompt "~/GitHub/Journal/autodidakt/samfunn.org")
               "* %?\n")
              ("jø" "økonomi" entry (file+datetree+prompt "~/GitHub/Journal/autodidakt/econ.org")
               "* %?\n")
                     )))

(require 'org-tempo)
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("elt" . "src emacs-lisp :tangle"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("pyt" . "src python :tangle"))
(add-to-list 'org-structure-template-alist '("sr" . "src racket"))
(add-to-list 'org-structure-template-alist '("srt" . "src racket :tangle"))
(add-to-list 'org-structure-template-alist '("sq" . "src sqlite"))

  (org-babel-do-load-languages
   'org-babel-load-languages (quote ((emacs-lisp . t)
                                     ;; (racket . t)
                                     (sqlite . t)
                                     (python . t)
                                     ;; (ipython .t)
                                     )))
  (setq org-babel-python-command "python3")
