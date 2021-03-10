(cond ((eq system-type 'windows-nt) 
       (setq MJO "~/:C/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/"
             NOT "~/:C/Users/bjorwa/Documents/GitHub/Markedsanalyse/Notater/"))
      ((eq system-type 'gnu/linux) 
       (setq MJO "~/GitHub/Markedsanalyse/journaler/"
             NOT "~/GitHub/Markedsanalyse/Notater/")))
(setq org-agenda-files '((concat MJO "energi-master.org")
                         (concat MJO "balanser.org")
                         (concat MJO "presentasjoner.org")
                         (concat MJO "liq.org")
                         (concat MJO "bd.org")
                         (concat MJO "pk.org")
                         (concat MJO "journal.org")
                         (concat NOT "informatikk.org")
                         (concat NOT "ferdigheter.org")))

         ;; (setq org-agenda-files '("~/GitHub/Markedsanalyse/journaler/energi-master.org"
         ;;                          "~/GitHub/Markedsanalyse/journaler/balanse.org" "~/GitHub/Markedsanalyse/journaler/presentasjoner.org" "~/GitHub/Markedsanalyse/journaler/liq.org" "~/GitHub/Markedsanalyse/journaler/bd.org" "~/GitHub/Markedsanalyse/journaler/pk.org" "~/GitHub/Notater/samfunndrill.org" "~/GitHub/Markedsanalyse/journaler/journal.org" "~/GitHub/Notater/moeter.org" "/home/bwarland/GitHub/Notater/informatikk.org" "~/GitHub/Notater/ferdigheter.org"))
