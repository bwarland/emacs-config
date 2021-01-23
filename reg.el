(cond ((eq system-type 'gnu/linux) (set-register ?c '(file . "~/GitHub/emacs-config/custom.el")))
      ((eq system-type 'windows-nt) (set-register ?c '(file . "~/C:/Users/bjorwa/Documents/GitHub/emacs-config/custom.el"))))

(set-register ?d '(file . "~/GitHub/Journal/dagbok.org"))
(set-register ?g '(file . "~/GitHub/"))
(set-register ?f '(file . "~/GitHub/Notater/ferdigheter.org"))
(set-register ?i '(file . "~/GitHub/Notater/informatikk.org"))
(set-register ?j '(file . "~/GitHub/Markedsanalyse/journaler/journal.org"))
(set-register ?l '(file . "~/GitHub/Markedsanalyse/journaler/liq.org"))
(set-register ?r '(file . "~/GitHub/Markedsanalyse/journaler/reg.org"))
(set-register ?t '(file . "~/GitHub/Journal/trening.org"))
(set-register ?e '(file . "~/.emacs"))

