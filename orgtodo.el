(setq org-todo-fast-todo-selection t
      org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "DATA(D)" "PRES(p)" "BAL(b)" "|" "DONE(d)"))
      org-todo-keyword-faces (quote (("TODO" :foreground "red" :background "white")
                                     ("NEXT" :foreground "blue" :background "white")
                                     ("DATA" :foreground "light slate grey" :background "white")
                                     ("PRES" :foreground "dark turquoise" :background "white")
                                     ("BAL" :foreground "dark olive green" :background "white")
                                     ("DONE" :foreground "dark green" :background "white"))))
