  (setq org-todo-fast-todo-selection t
        org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "WAIT(w@/!)" "|" "DONE(d)" "CANC(c@)"))
        org-todo-keyword-faces (quote (("TODO" :foreground "red" :background "white")
                                       ;; ("FIN" :foreground "red" :background "white")   ;; utgår
                                       ("NEXT" :foreground "blue" :background "white")
                                       ;; ("PRAK" :foreground "blue" :background "white") ;; utgår
                                       ("WAIT" :foreground "light slate grey" :background "white" :weight "bold") ;;utgår
                                       ;; ("PRES" :foreground "dark turquoise" :background "white" :weight "bold")   ;;utgår
                                       ;; ("BAL" :foreground "dark olive green" :background "white" :weight "bold")  ;;utgår
                                       ("CANC" :foreground "dark olive green" :background "white" :weight "bold")  ;;utgår
                                       ("DONE" :foreground "dark green" :background "white" :weight "bold"))))
(setq org-log-done 'note)
