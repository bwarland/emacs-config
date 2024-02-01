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

(cond ((eq system-type 'windows-nt) (set-frame-font "consolas-15"))
      ((string= system-name "mbell") (set-frame-font "liberation mono-15"))
      ((string= system-name "kbell") (set-frame-font "liberation mono-15"))
	    ((string= system-name "valsen") (set-frame-font "liberation mono-13"))
	    ((string= system-name "bjorno") (set-frame-font "monospace-14"))
	    ((string= system-name "biba") (set-frame-font "liberation mono-15"))
      ((string= system-name "nyvaar") (set-frame-font "liberation mono-12")))

(global-hl-line-mode +1)

(beacon-mode 1)

(setq modus-themes-mode-line '(accented 3d padded)
      modus-themes-region '(bg-only)
      modus-themes-completiones 'opinionated
      modus-themes-italic-constructs t
      modus-themes-paren-match '(bold intense underline)
      modus-themes-headings '((1 . (light overline underline 1.2))
			      (2 . (light 1.1))
			      (3 . (light 1.075))
			      (t . (light 1.05)))			      
      modus-themes-scale-headings t)
(load-theme 'modus-operandi t)

(use-package golden-ratio
  :ensure t
  :hook (after-init . golden-ratio-mode))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(put 'downcase-region 'disabled nil) (set-language-environment
"utf-8") (require 'rainbow-delimiters) (rainbow-delimiters-mode 1)
(recentf-mode 1) (setq history-length 25) (savehist-mode 1)
(save-place-mode 1) (global-auto-revert-mode 1) (setq
global-auto-revert-non-file-buffers 1)
(wc-mode 1)

(emacs-init-time)
;; use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))

(setq gc-cons-threshold (* 50 1000 1000))

(add-to-list 'load-path "~/.emacs.d/emacs-ob-racket-master/")

(global-auto-revert-mode t)

(use-package command-log-mode
  :defer t
  :bind
  ("C-c <f10>" . clm/toggle-command-log-buffer)
  :config
  (global-command-log-mode t))

(setq ispell-program-name "hunspell")
      ;; ispell-hunspell-dict-path-alist '((/usr/share/doc/hunspell-no))

(setq smartparens-global-mode 1)

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

(use-package hi-lock
  :defer t
  :bind (("M-o l" . highlight-lines-matching-regexp)
         ("M-o r" . highlight-regexp)
         ("M-o w" . highlight-phrase)))

(use-package treemacs
  :ensure t
  :bind ("<f5>" . treemacs)
  :custom (treemacs-is-never-other-window t)
  :hook (treemacs-mode . treemacs-project-follow-mode))
