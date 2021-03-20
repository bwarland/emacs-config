(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))
(setq inhibit-startup-message t)

(cond ((eq system-type 'windows-nt) (set-frame-font "Consolas-14"))
      ((eq system-type 'gnu/linux) (set-frame-font "Liberation Mono-15")))

(eval-when-compile
  (require 'use-package))

(setq default-directory "~/C:/Users/bjorwa/Documents/GitHub/")

(use-package helm
  :ensure t
  :bind (
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x f" . helm-recentf)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x b" . helm-buffers-list)
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

;(display-time-mode 1)

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

;; (autoload 'mc/edit-lines "mc-edit-lines" "" t)
;; (autoload 'mc/mark-next-like-this "mc-mark-more" "" t)
;; (autoload 'mc/mark-previous-like-this "mc-mark-more" "" t)
;; (autoload 'mc/mark-all-like-this "mc-mark-more" "" t)

;; (use-package smooth-scrolling
;;   :config
;;   (smooth-scrolling-mode 1))

;; (global-visual-line-mode t)

(defun org-config-fill-prefix ()
  "Set `fill-prefix' to the empty string."
  (setq fill-prefix ""))

(use-package org
  :mode (("\\.org$" . org-mode))
  ;; :mode (("\\.org$" . org))
  :bind
  (("C-c o" . 'org-mode)
   ("C-c c" . 'org-capture)
   ("<f5>" . 'org-copy-subtree)
   ("<f6>" . 'org-refile)
   ("<f7>" . 'org-archive-subtree-default)
   ("C-c a" . 'org-agenda)
   ("C-c l" . 'org-store-link)
   ("C-c C-t". 'org-todo)		;
   ("C-c t" . 'org-show-todo-tree))
  :config
  (progn
    (setq org-hide-leading-stars t
	  org-startup-indented t
	  initial-major-mode 'org-mode
	  ;; major-mode 'org-mode
	  org-pretty-entities t
	  org-todo-keywords (quote (
				    (sequence "TODO(t)" "møte(M)" "desk(D)" "hjemme(H)" "|" "DONE(d)")
				    (sequence "senere(s)" "|" "fund(f)" "jour(j)" "kon(k)" "vurder(v)")
				    ))
	  org-todo-state-tags-triggers (quote (
					       ;; ("les_igjen" ("les_igjen" . t))
					       ;; ("jour" ("les_igjen") ("vurder") ("senere") ("fund") ("kon") ("journal" . t))
					       ;; ("fund" ("les_igjen") ("jour") ("vurder") ("senere") ("kon") ("fundamental" . t))
					       ;; ("kon" ("les_igjen") ("jour") ("vurder") ("senere") ("kontrakt" . t))
					       ;; ("vurder" ("fund") ("les_igjen") ("journal") ("senere") ("vurder" . t))
					       ;; ("senere" ("fund") ("les_igjen") ("journal") ("senere" . t))
					       ))
	  org-todo-keyword-faces (quote (
					 ("TODO" :foreground "red" :background "white")
					 ("DONE" :foreground "dark green" :background "white")
					 ("jour" :foreground "red" :background "white")
					 ("fund" :foreground "red" :background "white")
					 ("kon" :foreground "red" :background "white")
					 ("vurder" :foreground "red" :background "white")
					 ;; ("senere" :foreground "green" :background "white")
					 ("hjemme" :foreground "green" :background "white")
					 ("møte" :foreground "red" :background "white")
					 ("desk" :foreground "green" :background "white")))
	  org-tag-faces (quote (("historie" :foreground "red" :background "white")
				("journal" :foreground "red" :background "white")
				("fundamental" :foreground "red" :background "white")
				("kontrakt" :foreground "red" :background "white")
				;; ("litteratur" :foreground "red" :background "white")
				("fremsyn" :foreground "red" :background "white")
				))
	  org-use-fast-todo-selection t
	  org-treat-s-cursor-todo-selection-as-state-change nil
	  org-directory "~/notebook"
	  org-default-notes-files "~/notebook/col.org"
	  org-refile-targets (quote (("comp.org" :maxlevel . 4)
				     ("prices.org" :maxlevel . 4)
				     ("fundamentals.org" :maxlevel . 3)
				     ("illustrasjoner.org" :maxlevel . 4)
				     ("info.org" :maxlevel . 4)
				     ("infra.org" :maxlevel . 4)
				     ("liq.org" :maxlevel . 5)
				     ("reg.org" :maxlevel . 4)
				     ;; ("balance.org" :maxlevel . 4)
				     ;; ("origination.org" :maxlevel . 4)
				     ;; ("markjour.org" :maxlevel . 3)
				     ("markets.org" :maxlevel . 6)
				     ("termin.org" :maxlevel . 2)
				     ("linux.org" :maxlevel . 6)))
	  org-reverse-note-order nil
	  org-refile-use-outline-path t 
	  org-outline-path-complete-in-steps nil
	  org-refile-allow-creating-parent-nodes (quote confirm)
	  org-completion-use-ido nil
	  org-indirect-buffer-display 'current-window
	  ;; org-indirect-buffer-display 'new-frame
	  ;; org-src-window-setup 'other-frame
	  org-hide-emphasis-markers t
	  org-pretty-entities 1
	  org-pretty-entities-include-sub-superscripts nil
	  org-tags-column -50
	  org-agenda-tags-column -50
	  ;; org-agenda-files '("~/notebook")
    	  org-hide-emphasis-marker t
	  org-ellipsis " ..."
	  ;; ;; AGENDA
	  ;; org-agenda-span 2
	  ;; org-agenda-tags-tags-column -100
	  ;; org-agenda-sticky nil
	  ;; org-agenda-inhibit-start-up t
	  ;; ;; org-agenda-time-grid '((daily today require-timed)
	  ;; ;; 			 (800 1000 1200 1400 1600 1800)
	  ;; ;; 			 "......" "------------------"))

	  
	  org-capture-templates (quote (

					;; ("H" "historie" entry (file+datetree+prompt "~/notebook/historie.org")
					;;  "* %?\n")

					("i" "illustrasjoner og kart" entry (file+olp "~/notebook/illustrasjoner.org" "illusamling")
					 "* [[C:\\Users\\bjorwa\\OneDrive - Equinor\\illustrations\\" :append t)
					("j" "journalføring")
					("jF" "ferdigheter" entry (file+datetree+prompt "~/notebook/problemløsning.org")
					 "* %?\n")
					("jf" "fundamentals" entry (file+datetree+prompt "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\fundamentals.org")
					 "* \n%?" :append t)
					("jj" "journal" entry (file+datetree+prompt "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\journal.org")
					 "***** TODO %?\njhlink")
					("t" "tabell")
					("ta" "price quote agencies" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\daily-market-update.org" "LNG" "Trades")
					 "|%^u|%^{Platts}|%^{Argus}|%^{ICIS}|" :prepend t)
					("tb" "LNG benchmark" entry (file+olp "~/notebook/markedsvurdering.org" "dagsrapport")
					 "* %^u \nyjkm%?" :prepend t)
					("td" "deal/price" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\daily-market-update.org" "LNG" "Deals")
					 "|%^u||%^{seller}|%^{buyer}|%^{location}|%^{number of cargoes}|%^{period}|%^{term}|%^{price}|%^{source}|%^{comment}|" :prepend t)
					("th" "handel" table-line (file+olp "~/notebook/markedsvurdering.org" "dagsrapport" "handel")
					 "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{sted}|%^{antall}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|" :prepend t)
					("tj" "JKM structure" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\daily-market-update.org" "LNG" "JKM-structure")
					 "|%^u|%^{FM}|%^{p1}|%^{p2}|%^{p3}|%^{p4}|%^{p5}|%^{comment}|" :prepend t)
					("tk" "kontrakt" entry (file+olp "~/notebook/termin.org" "termin")
					 "* %?\nzzkon" :prepend t)
					("tp" "tender: purchase" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\daily-market-update.org" "LNG" "Tender: purchase")
					 "| %^u |%^{buyer}|%^{location}|%^{number vessels}|%^{period month}|%^{term}|%^{source}|%^{comment}|" :prepend t)
					("ts" "tender: sale" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\daily-market-update.org" "LNG" "Tender: sale")
					 "| %^u |%^{seller}|%^{location}|%^{number vessels}|%^{period month}|%^{term}|%^{source}|%^{comment}|" :prepend t) 
					("tv" "vedlikehold" table-line (file+olp "C:\\Users\\bjorwa\\Documents\\GitHub\\Markedsanalyse\\journaler\\vedlikehold.org" "liquefaction")
					 "|%^u|%^{år}|%^{land}|%^{anlegg}|%^{start}|%^{slutt}|%^{kapasitet:mt}|%^{kilde}|%^{kommentar}|" :prepend t)
					("1" "rapporter" entry (file+olp "~/notebook/rapporter.org" "ikke-daglig")
					 "* [[C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\%?.pdf][" :append t)
					("2" "artikler" entry (file+olp "~/notebook/rapporter.org" "artikler")
					 "* [[C:\\Users\\bjorwa\\OneDrive - Equinor\\artikler\\%?.pdf][" :append t)
					)))
    (add-hook 'org-mode-hook #'org-config-fill-prefix)
    (add-to-list 'org-file-apps '("\\.xlsx'" . default))
    (add-to-list 'org-file-apps '("\\.xls'" . default))))

(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("elt" . "src emacs-lisp :tangle"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("pyt" . "src python :tangle"))

;; (setq org-capture-templates
;;        	     (quote (
;;        		     ("d" "drill/emner")
;;        		     ("db" "PowerBI" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "PowerBI")
;;        		      "** %? :drill:power_bi:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dd" "Database" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Database")
;;        		      "** %? :drill:db:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("de" "Emacs config" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Emacs")
;;        		      "** %? :drill:emacs:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 		     ("dg" "GitHub" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org" "Git")
;; 		      "** %? :drill:git:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("di" "Informatikk" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Informatikk")
;;        		      "** %? :drill:informatikk:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dl" "Linux" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Linux")
;;        		      "** %? :drill:linux:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dn" "Numpy" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Numpy")
;;        		      "** %? :drill:python:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("do" "Office" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Office")
;;        		      "** %? :drill:office:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dP" "Pandas" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Pandas")
;;        		      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dp" "Python" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Python")
;;        		      "** %? :drill:python:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dr" "Racket" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Racket")
;;        		      "** %? :drill:scheme:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;;        		     ("dx" "Excel" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/informatikk.org" "Racket")
;;        		      "** %? :drill:excel:\n:PROPERTIES:\n:DRILL_CARD_TYPE: twosided\n:end:\n# ")
;; 		     ("f" "fortelling og retorikk")
;; 		     ("ff" "fortelling" entry (file+olp "~C:/Users/bjorwa/Documents/GitHub/Notater/forret.org" "fortelling")
;; 		      "* %?\n")
;; 		     ("fr" "retorikk" entry (file+olp "~C:/Users/bjorwa/Documents/GitHub/Notater/forret.org" "retorikk")
;; 		      "* %?\n")
;;        		     ("h" "handling/gjøremål")
;;        		     ("hg" "gjøremål" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/moeter.org" "gjøremål")
;;        		      "* TODO %?\n%^t")
;;        		     ("hm" "møter" entry (file+olp "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/moeter.org" "møter")
;;        		      "* %?\n%^t")
;;        		     ("j" "journal/føring")
;;        		     ("jd" "Dagbok" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Journal/dagbok.org")
;;        		      "* %?\n")
;;        		     ("jf" "Fundamentals" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Markedsanalyse/journaler/fundamentals.org")
;;        		      "* %?\nhjlink")
;;        		     ("jF" "Ferdigheter" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/ferdigheter.org")
;;        		      "* %?\n")
;;        		     ("jj" "Journal" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Markedsanalyse/journaler/journal.org")
;;        		      "* %?\nhjlink")
;; 		     ("jr" "Retorikk og kommunikasjon" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub/Journal/retorikk.org")
;;        		      "* %?\n")
;;        		     ("jø" "Økonomi" entry (file+datetree+prompt "~/C:/Users/bjorwa/Documents/GitHub//GitHub/Notater/econ.org")
;; 		      		     ("t" "tabell")
;; 		     ("th" "handel" table-line (file+headline "~/notebook/markedsvurdering.org" "dagsrapport" "handel")
;; 		      "|%^u|%^{type}|%^{selger}|%^{kjøper}|%^{periode}|%^{incoterm}|%^{pris}|%^{kilde}|%^{kommentar}|")
;;        		      "* %?\n"))))

;; (use-package edwina
;;   :ensure t
;;   :config
;;   (progn
;;     (setq display-buffer-base-action '(display-buffer-below-selected))
;;     ;; (setq edwina-keymap-prefix
;;     )
;;   (edwina-setup-dwm-keys)
;;   (edwina-mode 1))



;; MISC


;; (setq-default indicate-empty-lines t)
;; (when (not indicate-empty-lines)
;;   (toggle-indicate-empty-lines))

;(setq column-number-mode t)

(defun other-window-backward (&optional n)
  "Select n-th previous window"
  (interactive "P")
  (other-window (- (or n 1))))

(defalias 'scroll-ahead 'scroll-up)

(defalias 'scroll-behind 'scroll-down)

(defun scroll-n-lines-ahead (&optional n)
  "scroll ahead n line(s)"
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n)))

(defun scroll-n-lines-back (&optional n)
  "scroll behind n line(s)"
  (interactive "P")
  (scroll-behind (prefix-numeric-value n)))

;; (set-face-attribute 'default t :font "Consolas-14")

(put 'downcase-region 'disabled nil)

(set-language-environment "UTF-8")

(defun s-trim-left (s)
 "remove whitespace at the beginning of s"
 (if (string-match "\\'[ \t\n\r]+" s)
     (replace-match "" t t s) s))

(defun s-strim-right (s)
 "remove whitespace at the end of s"
 (if (string-match "[ \t\n\r]+\\'" s)
     (replace-match "" t t s) s))

(defun s-trim (s)
 "remove whitespace at the beginning and end of s"
 (interactive "r")
 (s-trim-left (s-trim-right s)))

(visual-line-mode t)

(defalias 'list-buffers 'ibuffer-other-window)

(setq initial-buffer-choice "~/notebook/oversikt.org")

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

(use-package racket-mode
  :ensure t
  :config
  (progn
    (setq racket-racket-program "C:\\Program Files\\Racket\\racket.exe")
    (setq racket-raco-program "C:\\Program Files\\Racket\\raco.exe")
    )) 

(require 'sqlite)
(add-to-list 'exec-path "C:\\Appl\\sqlite-tools-win32-x86-3300100")
(put 'eval-expression 'disabled nil)

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
;;        (global-set-key (kbd "C-c y") (lambda () (interactive)
;;                                         (yas/load-directory "~/elisp/snippets")))


(global-visual-line-mode 1)
;; (setq-default auto-fill-function 'do-auto-fill)

;; (add-to-list 'exec-path "C:\\Appl\\aspell-0.60")
;; (setq ispell-program-name "aspell-0.60")
;; ;;(setq ispell-personal-dictionary "C:\\Appl\\Aspell")
;; (require 'ispell)

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
(global-set-key (kbd "<M-f8>") 'org-refile)
(global-set-key (kbd "<f9>") 'calc)

(global-set-key (kbd "C-x C-<up>") 'windmove-up)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)
(global-set-key (kbd "C-x C-<left>") 'windmove-left)
(global-set-key (kbd "C-x C-<right>") 'windmove-right)

(global-set-key (kbd "<f12>") '(lambda ()
				 (interactive)
				 (popup-menu 'yank-menu)))

;;(global-set-key (kbd "<f5>") 'org-copy-subtree)
(global-set-key (kbd "\M-?") 'help-command)
(global-set-key "\C-h" 'delete-backward-char)
