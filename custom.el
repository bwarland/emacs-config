(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))
(setq inhibit-startup-message t)

;; HER GÅR ALT SOM HAR ULIK KONFIGURERING PÅ GRUNN AV FORSKJELL MELLOM LINUX OG WINDOWS
;; En annen måte å gjøre dette på er å lage to filer som skal lastes, skjønt jeg antar dette neppe blir
;; et så stort at det ville være en fordel å gjøre det på den måten. 
;; =#=#=#=#=#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#= =#=#=#=# =#=#=#=# 
(cond ((eq system-type 'windows-nt) (progn (set-frame-font "Consolas-14")
					   (setq default-directory "~/C:/Users/bjorwa/Documents/GitHub/")
					   (setq org-refile-targets (quote (("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2)
									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4))))
					   )
       (eq system-type 'gnu/linux) (progn (set-frame-font "Liberation Mono-15")
					  (setq default-directory "~/Documents/GitHub/")
					  (setq org-refile-targets (quote (("~/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2)
									   ("~/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
									   ("~/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
									   ("~/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4))))
					  )))
;; ;; =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# =#=#=#=# 

(eval-when-compile
  (require 'use-package))

(setq use-package-always-defer t
      use-package-verbose nil
      use-package-expand-minimally t
      use-package-enable-imenu-support t)

(use-package edwina
  :ensure t
  :config
  (setq display-buffer-base-action '(display-buffer-below-selected))
  ;; (edwina-setup-dwm-keys)
  (edwina-mode 1))

(require 'org-drill)

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
	 ;; "C-c N: copy name"
	 ;; "C-c R: copy RGB"
	 ;; "C-c n: insert name"
	 ;; "C-c r: insert hex"
	 )
  :bind (:map helm-map
	      ("M-p" . helm-previous-line)
	      ("M-k" . helm-next-line)
	      ("M-I" . helm-previous-page)
	      ("M-K" . helm-next-page)
	      ("M-h" . helm-beginning-of-buffer)
	      ("M-H" . helm-end-of-buffer))
  :config (progn
	    (setq helm-buffers-lazy-matching t
		  helm-recentf-fuzzy-match t
		  helm-locate-fuzzy-match t
		  helm-split-window-in-side-p t
		  helm-lisp-fuzzy-completion t
		  helm-autoresize-max-height 0
		  helm-autoresize-min-height 20)
	    (helm-mode 1)
	    (ido-mode -1)
	    (helm-autoresize-mode 1)
	    ))

(display-time-mode 1)

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

;; ;; (autoload 'mc/edit-lines "mc-edit-lines" "" t)
;; ;; (autoload 'mc/mark-next-like-this "mc-mark-more" "" t)
;; ;; (autoload 'mc/mark-previous-like-this "mc-mark-more" "" t)
;; ;; (autoload 'mc/mark-all-like-this "mc-mark-more" "" t)

;; (use-package smooth-scrolling
;;   :config
;;   (smooth-scrolling-mode 1))

;; (global-visual-line-mode t)

;; (defun org-config-fill-prefix ()
;;   "Set `fill-prefix' to the empty string."
;;   (setq fill-prefix ""))

(use-package org
  :mode (("\\.org$" . org-mode))
  ;; :mode (("\\.org$" . org))
  :hook (org-mode . org-bullets-mode)
  :bind
  (("C-c o" . 'org-mode)
   ("C-c c" . 'org-capture)
   ("<f5>" . 'org-copy-subtree)
   ("<f6>" . 'org-refile)
   ("<f7>" . 'org-archive-subtree-default)
   ("C-c a" . 'org-agenda)
   ("C-c l" . 'org-store-link)
   ("C-c <down>" . org-time-stamp)
   ("C-c C-t". 'org-todo)		;
   ("C-c t" . 'org-show-todo-tree))
  :config
  (progn
   
    (setq ;; UTSEENDE
          ;; ===================
          org-hide-leading-stars t
	  org-startup-indented t
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
	  org-completion-use-ido nil
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
	  ;;=======================================================
    	  org-hide-emphasis-marker t
	  org-ellipsis " ..."
	  org-archive-location "~/Documents/org-arkiv/arkiv.org::* TASK"

	  ;; TODO-KONFIGURASJON
	  ;;=====================
	  org-todo-keywords (quote (
				    (sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
				    (sequence "jour(j)" "fund(f)")))

	  org-todo-keyword-faces (quote (("jour" :foreground "red" :background "white")
					 ("fund" :foreground "blue" :background "white")
					 ("TODO" :foreground "red" :background "white")
					 ("NEXT" :foreground "blue" :background "white")
					 ("DONE" :foreground "dark green" :background "white")))
	  ;; REFILE TARGETS
	  ;;====================
	  org-refile-targets (quote (("~/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2)
				     ("~/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
				     ("~/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
				     ("~/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4)))
	  ;; CAPTURE TEMPLATES
	  ;;=====================
	  org-capture-templates (quote (
					("d" "drill/emnder")
					("db" "PowerBI" entry (file+olp "~/GitHub/Notater/informatikk.org" "PowerBI")
					 "** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
					("dd" "Database" entry (file+olp "~/GitHub/Notater/informatikk.org" "Database")
					 "** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
					("de" "Emacs config" entry (file+olp "~/GitHub/Notater/informatikk.org" "Emacs")
					 "** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
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
					("h" "handling/gjøremål")
					("hg" "gjøremål" entry (file+olp "~/GitHub/Notater/moeter.org" "gjøremål")
					 "* TODO %?\n%^t")
					("hm" "møter" entry (file+olp "~/GitHub/Notater/moeter.org" "møter")
					 "* %?\n%^t")
					("j" "journal/føring")
					("jd" "Dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
					 "* %?\n")
					("jf" "Fundamentals" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/fundamentals.org")
					 "* %?\nhjlink")
					("jF" "Ferdigheter" entry (file+datetree+prompt "~/GitHub/Notater/ferdigheter.org")
					 "* %?\n")
					("jj" "Journal" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/journal.org")
					 "* %?\nhjlink")
					("jø" "Økonomi" entry (file+datetree+prompt "~/GitHub/Notater/econ.org")
					 "* %?\n")))
				       )))

;; (cond ((eq system-type 'gnu/linux)
;;        (setq org-refile-targets (quote (("~/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2`)
;; 					("~/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
;; 					("~/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
;; 					("~/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4))))
;;        (eq system-type 'windows-nt)
;;        (setq org-refile-targets (quote (("

(advice-add 'org-refile :after 'org-save-all-org-buffers)

(require 'org-super-agenda)

(use-package org-super-agenda
  :ensure t
  :config
  (org-super-agenda-mode 1)
  (setq org-super-agenda-groups
      '((:name "TIDSPLAN"
	       :time-grid t
	       :todo "TODO"
	       
	       )
	(:name "Informatikk"
	       :tag "informatikk")
	(:name "Emacs"
	       :tag "emacs")
	(:name "Linux"
	       :tag "linux")
	(:name "Racket/Scheme"
	       :tag "scheme")
	(:name "Python"
	       :tag "python")
	(:name "Jobb"
	       :tag "power_bi"
	       :tag "excel")
	(:discard (:tag "ikke_kal"))
	)))


(put 'downcase-region 'disabled nil)

(set-language-environment "UTF-8")

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

(use-package racket-mode
  :ensure t
  :config
  (when (eq system-type 'windows-nt) (progn
				       (setq racket-racket-program "C:\\Program Files\\Racket\\racket.exe")
				       (setq racket-raco-program "C:\\Program Files\\Racket\\raco.exe")))) 

(require 'sqlite)
;; (when (eq system-type 'windows-nt) (add-to-list 'exec-path "C:\\Appl\\sqlite-tools-win32-x86-3300100"))


(use-package yasnippet
  :diminish yas-minor-mode
  :init (yas-global-mode)
  :config
  (progn
    (yas-global-mode)
    (add-hook 'hippie-expand-try-functions-list 'yas-hippie-try-expand)
    (setq yas-key-syntaxes '("w_" "w_." "^ "))
;;    (setq yas-installed-snippets-dir "~/elisp/yasnippet-snippets")
    (setq yas-expand-only-for-last-commands nil)
    (yas-global-mode 1)
    (bind-key "\t" 'hippie-expand yas-minor-mode-map)
    (add-to-list 'yas-prompt-functions 'shk-yas/helm-prompt)))
       (global-set-key (kbd "C-c y") (lambda () (interactive)
                                        (yas/load-directory "~/elisp/snippets")))


(global-set-key (kbd "\C-x\C-k") 'kill-region)
(global-set-key (kbd "\C-c\C-k") 'kill-region)
(global-set-key (kbd "C-<wheel-up>") 'text-scale-increase)
(global-set-key (kbd "C-<wheel-down>") 'text-scale-decrease)
(global-set-key (kbd "C-c r") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)
(global-set-key (kbd "C-x a") 'define-global-abbrev)

(global-set-key (kbd "<f1>") 'enlarge-window)
(global-set-key (kbd "<f2>") 'shrink-window)
(global-set-key (kbd "<f3>") 'shrink-window-horizontally)
(global-set-key (kbd "<f4>") 'enlarge-window-horizontally)
(global-set-key (kbd "<f9>") 'calc)

(global-set-key (kbd "C-x C-<up>") 'windmove-up)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)
(global-set-key (kbd "C-x C-<left>") 'windmove-left)
(global-set-key (kbd "C-x C-<right>") 'windmove-right)

(global-set-key (kbd "<f12>") '(lambda ()
				 (interactive)
				 (popup-menu 'yank-menu)))

;; ;;(global-set-key (kbd "<f5>") 'org-copy-subtree)
;; (global-set-key (kbd "\M-?") 'help-command)
;; (global-set-key "\C-h" 'delete-backward-char)

;; (use-package quelpa-use-package :ensure t)
;; (use-package bitwarden :ensure nil :quelpa (bitwarden :fetcher github :repo "seanfarley/emacs-bitwarden"))

(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
    (eval-buffer)
    (quelpa-self-upgrade)))

(quelpa '(discover-my-major :fetcher git :url "https://github.com/l3kn/org-fc"))
(require 'org-fc-hydra)

;; https://gitlab.com/phillord/org-drill/
(setq org-drill-maximum-duration 20)
(setq org-drill-spaced-repetition-algorithm 'sm2)
(setq org-drill-add-random-noise-to-intervals-p t)
(setq org-drill-adjust-intervals-for-early-and-late-repetitions-p t)

;; HER GÅR ALT SOM HAR ULIK KONFIGURERING PÅ GRUNN AV FORSKJELL MELLOM LINUX OG WINDOWS
;; En annen måte å gjøre dette på er å lage to filer som skal lastes, skjønt jeg antar dette neppe blir
;; et så stort at det ville være en fordel å gjøre det på den måten. 
;; =#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=# 
;; (cond ((eq system-type 'windows-nt) (progn (set-frame-font "Consolas-14")
;; 					   (setq default-directory "~/C:/Users/bjorwa/Documents/GitHub/")
;; 					   (setq org-refile-targets (quote (("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2)
;; 									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
;; 									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
;; 									    ("~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4))))
;; 					   (setq org-capture-templates (quote (("d" "drill/emnder")
;; 									       ("db" "PowerBI" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "PowerBI")
;; 										"** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dd" "Database" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Database")
;; 										"** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("de" "Emacs config" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Emacs")
;; 										"** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("di" "Informatikk" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Informatikk")
;; 										"** %? :drill:informatikk:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dl" "Linux" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Linux")
;; 										"** %? :drill:linux:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dn" "Numpy" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Numpy")
;; 										"** %? :drill:python:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("do" "Office" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Office")
;; 										"** %? :drill:office:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dP" "Pandas" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Pandas")
;; 										"** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dp" "Python" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Python")
;; 										"** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dr" "Racket" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Racket")
;; 										"** %? :drill:scheme:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("dx" "Excel" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Racket")
;; 										"** %? :drill:excel:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									       ("h" "handling/gjøremål")
;; 									       ("hg" "gjøremål" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/moeter.org" "gjøremål")
;; 										"* TODO %?\n%^t")
;; 									       ("hm" "møter" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/moeter.org" "møter")
;; 										"* %?\n%^t")
;; 									       ("j" "journal/føring")
;; 									       ("jd" "Dagbok" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Journal/dagbok.org")
;; 										"* %?\n")
;; 									       ("jf" "Fundamentals" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/fundamentals.org")
;; 										"* %?\nhjlink")
;; 									       ("jF" "Ferdigheter" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Notater/ferdigheter.org")
;; 										"* %?\n")
;; 									       ("jj" "Journal" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/journal.org")
;; 										"* %?\nhjlink")
;; 									       ("jø" "Økonomi" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Notater/econ.org")
;; 										"* %?\n") 
;; 									      )))
;; 					   )
;;        (eq system-type 'gnu/linux) (progn (set-frame-font "Liberation Mono-15")
;; 					  (setq default-directory "~/Documents/GitHub/")
;; 					  (setq org-refile-targets (quote (("~/GitHub/Markedsanalyse/journaler/arkiv.org" :maxlevel . 2)
;; 									   ("~/GitHub/Markedsanalyse/journaler/liq.org" :maxlevel . 4)
;; 									   ("~/GitHub/Markedsanalyse/journaler/reg.org" :maxlevel . 4)
;; 									   ("~/GitHub/Markedsanalyse/journaler/energi-master.org" :maxlevel . 4))))
;; 					  (setq org-capture-templates (quote (("d" "drill/emnder")
;; 									      ("db" "PowerBI" entry (file+olp "~/GitHub/Notater/informatikk.org" "PowerBI")
;; 									       "** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dd" "Database" entry (file+olp "~/GitHub/Notater/informatikk.org" "Database")
;; 									       "** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("de" "Emacs config" entry (file+olp "~/GitHub/Notater/informatikk.org" "Emacs")
;; 									       "** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("di" "Informatikk" entry (file+olp "~/GitHub/Notater/informatikk.org" "Informatikk")
;; 									       "** %? :drill:informatikk:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dl" "Linux" entry (file+olp "~/GitHub/Notater/informatikk.org" "Linux")
;; 									       "** %? :drill:linux:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dn" "Numpy" entry (file+olp "~/GitHub/Notater/informatikk.org" "Numpy")
;; 									       "** %? :drill:python:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("do" "Office" entry (file+olp "~/GitHub/Notater/informatikk.org" "Office")
;; 									       "** %? :drill:office:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dP" "Pandas" entry (file+olp "~/GitHub/Notater/informatikk.org" "Pandas")
;; 									       "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dp" "Python" entry (file+olp "~/GitHub/Notater/informatikk.org" "Python")
;; 									       "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dr" "Racket" entry (file+olp "~/GitHub/Notater/informatikk.org" "Racket")
;; 									       "** %? :drill:scheme:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("dx" "Excel" entry (file+olp "~/GitHub/Notater/informatikk.org" "Racket")
;; 									       "** %? :drill:excel:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 									      ("h" "handling/gjøremål")
;; 									      ("hg" "gjøremål" entry (file+olp "~/GitHub/Notater/moeter.org" "gjøremål")
;; 									       "* TODO %?\n%^t")
;; 									      ("hm" "møter" entry (file+olp "~/GitHub/Notater/moeter.org" "møter")
;; 									       "* %?\n%^t")
;; 									      ("j" "journal/føring")
;; 									      ("jd" "Dagbok" entry (file+datetree+prompt "~/GitHub/Journal/dagbok.org")
;; 									       "* %?\n")
;; 									      ("jf" "Fundamentals" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/fundamentals.org")
;; 									       "* %?\nhjlink")
;; 									      ("jF" "Ferdigheter" entry (file+datetree+prompt "~/GitHub/Notater/ferdigheter.org")
;; 									       "* %?\n")
;; 									      ("jj" "Journal" entry (file+datetree+prompt "~/GitHub/Markedsanalyse/journaler/journal.org")
;; 									       "* %?\nhjlink")
;; 									      ("jø" "Økonomi" entry (file+datetree+prompt "~/GitHub/Notater/econ.org")
;; 									       "* %?\n") 
;; 									      )))
;; 					  )))
