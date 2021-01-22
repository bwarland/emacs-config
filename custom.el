(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))
(setq inhibit-startup-message t)
;; (set-fringe-mode 0)
(setq visible-bell t)

(global-visual-line-mode t)
(display-time-mode 1)


(eval-when-compile
  (require 'use-package))

(setq use-package-always-defer t
      ;; use-package-always-ensure t
      use-package-verbose nil
      use-package-expand-minimally t
      use-package-enable-imenu-support t)



;; ;; ;; HER GÅR ALT SOM HAR ULIK KONFIGURERING PÅ GRUNN AV FORSKJELL MELLOM LINUX OG WINDOWS
;; ;; ;; En annen måte å gjøre dette på er å lage to filer som skal lastes, skjønt jeg antar dette neppe blir
;; ;; ;; et så stort at det ville være en fordel å gjøre det på den måten. 
;; ;; ;; =#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=# 
(cond ((eq system-type 'windows-nt) (set-frame-font "Consolas-14"))
      ((string= system-name "macebell") (set-frame-font "Liberation Mono-15"))
      ((string= system-name "kbell") (set-frame-font "Liberation Mono-11")))

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

(cond ((eq system-type 'gnu/linux) (setq python-shell-interpreter "/home/bwarland/anaconda3/bin/python3")))

;; ;; ;; =#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=# 


(use-package edwina
  :ensure t
  :config
  (setq display-buffer-base-action '(display-buffer-below-selected))
  ;; (edwina-setup-dwm-keys)
  (edwina-mode 1))



(use-package helm
  :ensure t
  :bind (
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x f" . helm-recentf)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x b" . helm-buffers-list)	;
	 ("C-x c y" . helm-yas-complete)
	 ("C-x c Y" . helm-yas-create-snippet-on-region)
	 ("C-c h o" . helm-occur)
	 ("C-c h x" . helm-register)
	 ("C-c <f9>" . helm-calcul-expression)
	 ("C-c <f1>" . helm-colors)
	 ;; ("M-p" . helm-previous-line)
	 ;; ("M-k" . helm-next-line)
	 ;; ("M-I" . helm-previous-page)
	 ;; ("M-K" . helm-next-page)
	 ;; ("M-h" . helm-beginning-of-buffer)
	 ;; ("M-H" . helm-end-of-buffer)
	 )
  :init
  (setq helm-buffers-lazy-matching t
	helm-recentf-fuzzy-match t
	helm-locate-fuzzy-match t
	helm-split-window-in-side-p t
	helm-lisp-fuzzy-completion t
	helm-autoresize-max-height 0
	helm-autoresize-min-height 20)
  :config
  (ido-mode -1)
  (helm-mode 1)
  (helm-autoresize-mode 1))



(use-package swiper-helm
  :ensure t
  :bind ("C-s" . swiper-helm))

(use-package multiple-cursors
  :bind
  (
   ("C-c m t" . mc/mark-all-like-this)
   ("C-c m l" . mc/edit-lines)
   ("C-c m e" . mc/edit-end-of-lines)
   ("C-c m a" . mc/edit-beginning-of-lines)
   ("C-c m n" . mc/edit-next-line-like-this)
   ("C-c m p" . mc/edit-previous-like-this)
   ("C-c m r" . set-rectangular-region-anchor)))

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
	  ;; org-completion-use-ido nil
	  org-indirect-buffer-display 'current-window
	  org-hide-emphasis-markers t
	  org-tags-column -50

	  ;; AGENDA-KONFIGURASJON
	  ;;;=====================================================
	  org-agenda-columns t
	  org-agenda-tags-column -50
	  org-agenda-include-deadlines t
	  org-agenda-compact-blocks t
	  org-agenda-block-seperator t
	  org-agenda-span 5
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
                                       (0600 0800 1000 1200 1400 1600)
                                       "      " "................"))
    	  org-hide-emphasis-marker t
	  org-ellipsis " ..."
	  org-archive-location "~/Documents/org-arkiv/arkiv.org::* TASK"
	  org-todo-keywords (quote (
				    (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
				    (sequence "jour(j)" "fund(f)")))

	  org-todo-keyword-faces (quote (("jour" :foreground "red" :background "white")
					 ("fund" :foreground "blue" :background "white")
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
  (setq-default major-mode 'org-mode)
  )


(advice-add 'org-refile :after 'org-save-all-org-buffers)

(when (eq system-type 'gnu/linux) (require 'org-super-agenda))

(when (eq system-type 'gnu/linux)
  (use-package org-super-agenda
    :ensure t
    :config
    (org-super-agenda-mode 1)
    (setq org-super-agenda-groups
	  '((:name "TIDSPLAN"
		   :time-grid t
		   :todo "TODO")
	    (:name "Informatikk" :tag "informatikk")
	    (:name "Emacs" :tag "emacs")
	    (:name "GitHub" :tag "git")
	    (:name "Linux" :tag "linux")
	    (:name "Racket/Scheme" :tag "scheme")
	    (:name "Python" :tag "python")
	    (:name "Jobb" 
		   :tag "power_bi"
		   :tag "excel")
	    (:discard (:tag "ikke_kal"))))))

(put 'downcase-region 'disabled nil)

(set-language-environment "UTF-8")

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

;; (require 'sqlite)
;; (when (eq system-type 'windows-nt) (add-to-list 'exec-path "C:\\Appl\\sqlite-tools-win32-x86-3300100"))


(use-package yasnippet
  :diminish yas-minor-mode
  :init (yas-global-mode)
  :config
  (yas-global-mode)
  (add-hook 'hippie-expand-try-functions-list 'yas-hippie-try-expand)
  (setq yas-key-syntaxes '("w_" "w_." "^ "))
;;    (setq yas-installed-snippets-dir "~/elisp/yasnippet-snippets")
  (setq yas-expand-only-for-last-commands nil)
  (yas-global-mode 1)
  (bind-key "\t" 'hippie-expand yas-minor-mode-map)
  (add-to-list 'yas-prompt-functions 'shk-yas/helm-prompt)
  (global-set-key (kbd "C-c y") (lambda () (interactive)
				  (yas/load-directory "~/elisp/snippets"))))


;; (use-package quelpa-use-package :ensure t)
;; (use-package bitwarden :ensure nil :quelpa (bitwarden :fetcher github :repo "seanfarley/emacs-bitwarden"))

(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)))

(quelpa '(discover-my-major :fetcher git :url "https://github.com/l3kn/org-fc"))
(require 'org-fc-hydra)


(put 'downcase-region 'disabled nil)

(set-language-environment "UTF-8")

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

(use-package racket-mode
  :ensure t
  :config
  (when (eq system-type 'windows-nt) ((setq racket-racket-program "C:\\Program Files\\Racket\\racket.exe"
				            racket-raco-program "C:\\Program Files\\Racket\\raco.exe")))) 

;; (require 'sqlite)
;; (when (eq system-type 'windows-nt) (add-to-list 'exec-path "C:\\Appl\\sqlite-tools-win32-x86-3300100"))

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
		     ("jt" "trening" entry (file+datetree+prompt "~/GitHub/Journal/trening.org")
		      "* %?\n")
       		     ("jø" "Økonomi" entry (file+datetree+prompt "~/GitHub/Notater/econ.org") 
       		      "* %?\n")
		     ("t" "tabell")
		     ("tt" "trening" table-line (file+headline "~/GitHub/Journal/trening.org" "Tabell")
		      "|%^u|%^{type}|%^{oppvarming}|%^{runder}|%^{vekt}|%^{tid}|%^{kommentar}|")
		     ;; ("th" "handel" table-line (file+headline "~/GitHub/Notater/test.org" "tabell")
		     ;;  "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|")
		     )))))





(require 'org-drill)

(use-package org-drill
  :ensure t
  ;; https://gitlab.com/phillord/org-drill/
  :config
  (setq org-drill-maximum-duration 20
	org-drill-spaced-repetition-algorithm 'sm2
	org-drill-add-random-noise-to-intervals-p t
	org-drill-adjust-intervals-for-early-and-late-repetitions-p t))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package command-log-mode
  :bind
  ("C-c <f10>" . clm/toggle-command-log-buffer)
  :config
  (global-command-log-mode t))

(use-package hi-lock
  :bind (("M-o l" . highlight-lines-matching-regexp)
	 ("M-o r" . highlight-regexp)
	 ("M-o w" . highlight-phrase)))


