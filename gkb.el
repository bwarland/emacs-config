(global-set-key (kbd "\C-x\C-k") 'kill-region)
(global-set-key (kbd "\C-c\C-k") 'kill-region)

(global-set-key (kbd "C-<up>") 'text-scale-increase)
(global-set-key (kbd "C-<down>") 'text-scale-decrease)
(global-set-key (kbd "C-<wheel-up>") 'text-scale-increase)
(global-set-key (kbd "C-<wheel-down>") 'text-scale-decrease)

(global-set-key (kbd "C-c r") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

(global-set-key (kbd "C-x a") 'define-global-abbrev)

(global-set-key (kbd "C-c l") 'org-store-link)

(global-set-key (kbd "C-x C-<up>") 'windmove-up)
(global-set-key (kbd "C-x C-<down>") 'windmove-down)
(global-set-key (kbd "C-x C-<left>") 'windmove-left)
(global-set-key (kbd "C-x C-<right>") 'windmove-right)

(global-set-key (kbd "\M-?") 'help-command)
(global-set-key (kbd "<f1>") 'enlarge-window)
(global-set-key (kbd "<f2>") 'shrink-window)
(global-set-key (kbd "<f3>") 'shrink-window-horizontally)
(global-set-key (kbd "<f4>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "<f5>") 'org-copy-subtree) ;; i custom.el
(global-set-key (kbd "<f9>") 'calc)
(global-set-key (kbd "<f11>") 'describe-function)
(global-set-key (kbd "<f12>") '(lambda ()
				 (interactive)
				 (popup-menu 'yank-menu)))
(global-set-key (kbd "\M-?") 'help-command)
