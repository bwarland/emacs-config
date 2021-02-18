(setq python-shell-interpreter "/home/bwarland/anaconda3/bin/python3")

(use-package racket-mode
    :defer t
    :config
    (when (eq system-type 'windows-nt) ((setq racket-racket-program "C:\\Program Files\\Racket\\racket.exe"
                                              racket-raco-program "C:\\Program Files\\Racket\\raco.exe"))))
(require 'ob-racket)

(setq sql-sqlite-program "/home/bwarland/anaconda3/bin/sqlite3")
