
(load-file "~/GitHub/emacs-config/pakker.el")
(load-file "~/GitHub/emacs-config/reg.el")
(load-file "~/GitHub/emacs-config/gkb.el")
(load-file "~/GitHub/emacs-config/generelt.el")
(load-file "~/GitHub/emacs-config/maler.el")

;; (load-file "~/GitHub/emacs-config/org-konf.el")
;; (load-file "~/GitHub/emacs-config/linorg.el")
(load-file "~/GitHub/emacs-config/org-agenda.el")
(load-file "~/GitHub/emacs-config/orgtodo.el")
(load-file "~/GitHub/emacs-config/helm-konf.el")
(load-file "~/GitHub/emacs-config/programmering.el")
(load-file "~/GitHub/emacs-config/flere-markører.el")

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ;; ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (flatland)))
 '(custom-safe-themes
   (quote
    ("eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "54449a089fc2f95f99ebc9b9b6067c802532fd50097cf44c46a53b4437d5c6cc" default)))
 '(org-agenda-files
   (quote
    ("~/GitHub/Markedsanalyse/journaler/balanse.org" "~/GitHub/Markedsanalyse/journaler/reg.org" "~/GitHub/Markedsanalyse/journaler/liq.org" "~/GitHub/Markedsanalyse/journaler/journal.org" "~/GitHub/Notater/samfunndrill.org" "~/GitHub/Journal/samfunn.org" "~/GitHub/Notater/informatikk.org" "~/GitHub/Notater/moeter.org" "~/GitHub/Notater/ferdigheter.org")))
 '(org-export-with-priority t)
 '(org-modules
   (quote
    (ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail ol-w3m org-learn ol-man org-registry orgtbl-sqlinsert)))
 '(package-selected-packages
   (quote
    (geiser slime org-gcal org-books helm-org enlive helm-ls-git rainbow-delimiters auto-package-update counsel doom-themes doom-modeline command-log-mode discover-my-major edwina vterm-toggle magit org-super-agenda quelpa-use-package quelpa vterm org-drill-table org-drill org-bullets org-noter-pdftools org-noter origami treemacs anki-vocabulary anki-editor anki-connect anki-mode python-black ipython bbdb anaconda-mode sqlite esqlite-helm esqlite sqlite3 hackernews smooth-scrolling swiper-helm helm use-package racket-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; (load-file "~/.emacs.d/init/bw-hydra-config.el")
;; (load-file "~/.emacs.d/custom.el")
;; (load-file "~/GitHub/emacs-config/custom.el")
;; (load-file "~/GitHub/emacs-config/custom.org")

;; (load-file "~/.emacs.d/elpa/org-drill-20200412.1812/org-drill.el")
;;(load-file "~/.emacs.d/init/ido.el")
;;(load-file "~/.emacs.d/init/tmp.el")
;; (emacs-init-time)

;; ;; Use a hook so the message doesn't get clobbered by other messages.
;; (add-hook 'emacs-startup-hook
;;           (lambda ()
;;             (message "Emacs ready in %s with %d garbage collections."
;;                      (format "%.2f seconds"
;;                              (float-time
;;                               (time-subtract after-init-time before-init-time)))
;;                      gcs-done)))

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((emacs-lisp . t)
;;    (python . t)
;;    ;; (racket . t)
;;    ;; (guile . t)
;;    ))

;; (setq gc-cons-threshold (* 50 1000 1000))
;; (setq python-indent-guess-indent-offset t)
;; (setq python-indent-guess-indent-offset-verbose t)


;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/sbcl")
