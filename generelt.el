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

  (cond ((eq system-type 'windows-nt) (set-frame-font "consolas-14"))
        ((string= system-name "mbell") (set-frame-font "liberation mono-13"))
        ((string= system-name "kbell") (set-frame-font "liberation mono-12"))
	((string= system-name "biba") (set-frame-font "liberation mono-15"))
        ((string= system-name "nyvaar") (set-frame-font "liberation mono-12")))

  ;; (use-package doom-modeline
  ;;     :ensure t
  ;;     :init (doom-modeline-mode 1)
  ;;     :hook (after-init . doom-modeline-init)
  ;;     :config (setq doom-modeline-bar-height 25
  ;;                   doom-modeline-bar-width 3
  ;;                   doom-modeline-buffer-encoding t
  ;;                   doom-modeline-workspace-name t
  ;; 		  doom-modeline-major-mode-icon t
  ;; 		  doom-modeline-buffer-state-icon t
  ;; 		  doom-modeline-buffer-modification-icon t
  ;; 		  doom-modeline-modal-icon t
  ;; 		  doom-modeline-env-python-executable "python"
  ;; 		  doom-modeline-icon (display-graphic-p)))
    ;; (use-package doom-themes
    ;;   :init (load-theme 'doom-palenight t))

;; (setq-default show-trailing-whitespace t)

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
(load-theme 'modus-vivendi t)

(put 'downcase-region 'disabled nil)
(set-language-environment "utf-8")
(require 'rainbow-delimiters)
(rainbow-delimiters-mode 1)
(recentf-mode 1)
(setq history-length 25)
(savehist-mode 1)
(save-place-mode 1)
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers 1)
(wc-mode 1)
;; (require 'openwith)
;; (openwith-mode t)
;; (setq openwith-associations '(("\\.pdf\\'" "qpdfview" (file))))

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

    ;; (use-package hi-lock
    ;;   :defer t
    ;;   :bind (("M-o l" . highlight-lines-matching-regexp)
    ;;          ("M-o r" . highlight-regexp)
    ;;          ("M-o w" . highlight-phrase)))

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

  (setq ispell-program-name "hunspell")
        ;; ispell-hunspell-dict-path-alist '((/usr/share/doc/hunspell-no))

(global-auto-revert-mode t)

  (use-package command-log-mode
    :defer t
    :bind
    ("C-c <f10>" . clm/toggle-command-log-buffer)
    :config
    (global-command-log-mode t))

;; (setq abbrev-suggest 1)
;; (setq abbrev-suggest-hint-threshold 3)
