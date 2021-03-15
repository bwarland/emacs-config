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
        ((string= system-name "macebell") (set-frame-font "liberation mono-15"))
        ((string= system-name "kbell") (set-frame-font "liberation mono-11"))
        ((string= system-name "ingentingen") (set-frame-font "liberation mono-12")))

(use-package doom-modeline
    :ensure t
    :init (doom-modeline-mode 1)
    :config (setq doom-modeline-bar-height 25
                  doom-modeline-bar-width 3
                  doom-modeline-buffer-encoding t
                  doom-modeline-workspace-name t))
  ;; (use-package doom-themes
    ;; :init (load-theme 'doom-palenight t))

(setq-default show-trailing-whitespace t)

  (put 'downcase-region 'disabled nil)
  (set-language-environment "utf-8")
  (require 'rainbow-delimiters)
  ;; (rainbow-delimiters-mode 1)

(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(setq save-abbrevs 'silent)
(setq-default abbrev-mode t)

    (use-package hi-lock
      :defer t
      :bind (("M-o l" . highlight-lines-matching-regexp)
             ("M-o r" . highlight-regexp)
             ("M-o w" . highlight-phrase)))

  (use-package command-log-mode
    :defer t
    :bind
    ("C-c <f10>" . clm/toggle-command-log-buffer)
    :config
    (global-command-log-mode t))

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

(add-to-list 'load-path "~/.emacs.d/ob-racket-master/")

  (setq ispell-program-name "hunspell")
        ;; ispell-hunspell-dict-path-alist '((/usr/share/doc/hunspell-no))
