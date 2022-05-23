(defhydra hyroam (:color blue
		      :hint nil)
"
^indekskort^                                
^^^^^^^^-----------------------------------------------------------------------
c: nytt kort                f: finn kort               i: legg inn kort
d: daglig kommentar         D: gå til daglig           K: gå til dato
a: alias                    A: fjern alias
r: referanse                R: fjern referanse
t: tag                      T: fjern tag
-------------------------------------------------------------------------------
b: se baklenke
s: et tilfeldig kort
m: grafisk grensesnitt for grafer (av/på)
g: oversikt graf
l: vis lokal graf
===============================================================================
"
("c" org-roam-capture)
("f" org-roam-node-find)
("i" org-roam-node-insert)
("d" org-roam-dailies-capture-today)
("D" org-roam-dailies-goto-today)
("K" org-roam-dailies-goto-date)
("a" org-roam-alias-add)
("A" org-roam-alias-remove)
("t" org-roam-tag-add)
("T" org-roam-tag-remove)
("r" org-roam-ref-add)
("R" org-roam-ref-remove)
("C" nil "cancel")
("b" org-roam-buffer-toggle)
("s" org-roam-node-random)
("m" org-roam-ui-mode)
("g" org-roam-ui-open)
("l" org-roam-ui-node-local))
;; "V" Buffer-menu-select "select" :color blue)
;; ("o" Buffer-menu-other-window "other-window" :color blue)
;; ("q" quit-window "quit" :color blue)

(global-set-key (kbd "<f8>") 'hyroam/body)
