    ;; (setq python-shell-completion-native-enable nil)
  (setq org-src-preserve-indentation t)
  (setq python-shell-interpreter "/home/bwarland/anaconda3/bin/python3")

    (use-package racket-mode
      :defer t
      :config
      (when (eq system-type 'windows-nt) ((setq racket-racket-program "c:\\program files\\racket\\racket.exe"
                                                racket-raco-program "c:\\program files\\racket\\raco.exe"))))
  ;; (require 'ob-racket)

  (setq sql-sqlite-program "/home/bwarland/anaconda3/bin/sqlite3")
