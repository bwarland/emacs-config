(when (eq system-type 'gnu/linux) (set-register ?d '(file . "~/GitHub/Journal/dagbok.org")))
(when (eq system-type 'gnu/linux) (set-register ?t '(file . "~/GitHub/Journal/trening.org")))
(cond ((eq system-type 'gnu/linux) (set-register ?c '(file . "~/GitHub/emacs-config/custom.el")))
      ((eq system-type 'windows-nt) (set-register ?c '(file . "~/C:/Users/bjorwa/Documents/GitHub/emacs-config/custom.el"))))
(cond ((eq system-type 'gnu/linux) (set-register ?g '(file . "~/GitHub/")))
      ((eq system-type 'windows-nt) (set-register ?g '(file . "~/C:/Users/bjorwa/Documents/GitHub/"))))
(cond ((eq system-type 'gnu/linux) (set-register ?c '(file . "~/GitHub/Notater/ferdigheter.org")))
      ((eq system-type 'windows-nt) (set-register ?c '(file . "~/C:/Users/bjorwa/Documents/GitHub/Notater/ferdigheter.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?k '(file . "~/GitHub/emacs-config/README.org")))
      ((eq system-type 'windows-nt) (set-register ?k '(file . "~/C:/Users/bjorwa/Documents/GitHub/emacs-config/README.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?i '(file . "~/GitHub/Notater/informatikk.org")))
      ((eq system-type 'windows-nt) (set-register ?i '(file . "~/C:/Users/bjorwa/Documents/GitHub/Notater/informatikk.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?j '(file . "~/GitHub/Markedsanalyse/journaler/journal.org")))
      ((eq system-type 'windows-nt) (set-register ?j '(file . "~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/informatikk.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?l '(file . "~/GitHub/Markedsanalyse/journaler/liq.org")))
      ((eq system-type 'windows-nt) (set-register ?l '(file . "~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/liq.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?r '(file . "~/GitHub/Markedsanalyse/journaler/reg.org")))
      ((eq system-type 'windows-nt) (set-register ?r '(file . "~/C:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/reg.org"))))
(cond ((eq system-type 'gnu/linux) (set-register ?e '(file . "~/.emacs")))
      ((eq system-type 'windows-nt) (set-register ?e '(file . "~/C:/Users/bjorwa/AppData/Roaming/.emacs"))))

;; (set-register ?e '(file . "~/.emacs"))
;; (set-register ?r '(file . "~/GitHub/Markedsanalyse/journaler/reg.org"))
;; (set-register ?l '(file . "~/GitHub/Markedsanalyse/journaler/liq.org"))
;; (set-register ?j '(file . "~/GitHub/Markedsanalyse/journaler/journal.org"))
;; (set-register ?i '(file . "~/GitHub/Notater/informatikk.org"))
;; (set-register ?g '(file . "~/GitHub/"))
;; (set-register ?f '(file . "~/GitHub/Notater/ferdigheter.org"))
;; (set-register ?k '(file . "~/GitHub/emacs-config/README.org"))
