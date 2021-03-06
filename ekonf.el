(eval-when-compile
  (require 'use-package))

(setq use-package-always-defer t
      ;; use-package-always-ensure t
      use-package-verbose nil
      use-package-expand-minimally t
      use-package-enable-imenu-support t)

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

(cond ((eq system-type 'windows-nt) (set-frame-font "Consolas-14"))
      ((string= system-name "macebell") (set-frame-font "Liberation Mono-15"))
      ((string= system-name "kbell") (set-frame-font "Liberation Mono-11"))
      ((string= system-name "ingentingen") (set-frame-font "Liberation Mono-12")))

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
