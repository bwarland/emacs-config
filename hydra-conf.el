(defhydra hyroam (:color blue
		      :hint nil)
"
^INDEKSKORT^                                
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

(defhydra hyorg (:hint nil)
  "
^AGENDA^                                
^^^^^^^^-----------------------------------------------------------------------
f: filtrer agenda                i: fil inn i agendaliste
T: filtrer agenda på tag         u: fil ut av agendaliste   
r: filtrer på regexp  
a: tilbake til vanlig agenda

t: av/på agendatid
d: se dag
u: se uke
m: se måned
å: se år

^TABELLER OG KOLONNER^                                
^^^^^^^^-----------------------------------------------------------------------
c: til kolonner         I: org-insert-columns-dblock
q: ut av kolonner       U: org-dblock-update
s: søk på regexp

===============================================================================
"
  ("f" org-agenda-filter)
  ("T" org-agenda-filter-by-tag)
  ("r" org-agenda-filter-by-regexp)
  ("i" org-file-to-front)
  ("u" org-remove-file)
  ("t" org-agenda-toggle-time-grid)
  ("d" org-agenda-day-view)
  ("u" org-agenda-week-view)
  ("m" org-agenda-month-view)
  ("å" org-agenda-year-view)
  ("a" org-agenda-reset-view)
  ("s" org-sparce-tree)
  ("S" org-set-property)
  ("D" org-delete-property)
  ("C" org-compute-property-at-point)
  ("c" org-columns)
  ("q" org-columns-quit)
  ("U" org-dblock-update)
  ("I" org-insert-columns-dblock)
  )
(global-set-key (kbd "<f7>") 'hyorg/body)
