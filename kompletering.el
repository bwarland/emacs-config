(add-hook 'after-init-hook 'global-company-mode)
(use-package company
  :commands (company-mode
	     company-complete-common
	     company-complete-selection
	     helm-company)
  :init (setq company-minimum-prefix-length 3
	      company-require-match nil
	      company-selection-wrap-around t
	      company-dabbrev-downcase t
	      company-tooltip-limit 20
	      company-tooltip-minimum-width 15
	      company-tooltip-align-annotations 1)
  :config (setq company-idle-delay 1000
		company-minimum-prefix-length 3)
  (global-company-mode))

(icomplete-mode 1)
