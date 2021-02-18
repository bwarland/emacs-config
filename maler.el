(use-package yasnippet
  :defer t
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
