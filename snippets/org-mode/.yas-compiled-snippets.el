;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '((">us" "[[file:/home/bw/Documents/Marked/USA/rapporter/${1:filnavn}.pdf][${1]$0" "USA" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/usa" nil nil)
		       (">gb" "[[file:/home/bw/Documents/Marked/United_Kingdom/rapporter/${1:filnavn}.pdf][$1]$0" "United Kingdom" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/united_kingdom" nil nil)
		       (">ua" "[[file:/home/bw/Documents/Marked/Ukraine/rapporter/${1:filnavn}.pdf][$1]$0" "Ukraine" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ukraine" nil nil)
		       (">tr" "[[file:/home/bw/Documents/Marked/Turkey/rapporter/${1:filnavn}.pdf][$1]$0" "Turkey" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/turkey" nil nil)
		       (">se" "[[file:/home/bw/Documents/Marked/Sweden/rapporter/${1:filnavn}.pdf][$1]$0" "Sweden" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sweden" nil nil)
		       (">spglobal" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spglobal" nil nil)
		       (">ru" "[[file:/home/bw/Documents/Marked/Russia/rapporter/${1:filnavn}.pdf][$1]$0" "Russia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/russia" nil nil)
		       (">reg" ":PROPERTIES:    \n:cap_bcma:      $1\n:site:          $2\n:port:          $3\n:status:        $4\n:start_year:    $5\n:end_y:         \n:operator:      $6\n:capex:         $7\n:port_cost:     \n:regas_cost:        \n:storage_cbm:   $8\n:END:" "zzreg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/regasification" nil nil)
		       (">prod" "[[/home/bw/Documents/Marked/Products/${1:filnavn}.pdf][$1]$0\n" "mappe-products" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/products" nil nil)
		       (">pl" "[[file:/home/bw/Documents/Marked/Poland/rapporter/${1:filnavn}.pdf][$1]$0" "Poland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/poland" nil nil)
		       (">pic" "[[file:/home/bw/Pictures/${1:bilde}.png][$1]" "zpic" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/pictures" nil nil)
		       (">no" "[[file:/home/bw/Documents/Marked/Norway/rapporter/${1:filnavn}.pdf][$1]$0" "Norway" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/norway" nil nil)
		       (">nl" "[[file:/home/bw/Documents/Marked/Netherlands/rapporter/${1:filnavn}.pdf][$1]$0" "Netherlands" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/netherlands" nil nil)
		       (">lu" "[[file:/home/bw/Documents/Marked/Luxembourg/rapporter/${1:filnavn}.pdf][$1]$0" "Luxembourg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/luxembourg" nil nil)
		       (">liq" ":PROPERTIES:\n:cap_mtpa:   $1  \n:trains:     $2\n:site:       $3\n:type:       $4\n:status:     $5\n:FID:        $6\n:startY:     $7\n:end_y:      \n:operator:   $8\n:capex:      $9\n:opex: \n:location:   $10  \n:END:" "zzliq" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/liquefaction" nil nil)
		       (">wm" "[[file:/home/bw/Documents/Marked/Products/Wood_Mackenzie/${1:filnavn}.pdf][$1]$0\n" "Wood Mackenzie" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkwm" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkspg" nil nil)
		       (">oies" "[[file:/home/bw/Documents/Marked/Products/OIES/${1:filnavn}.pdf][$1]$0\n" "link OIES" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkoies" nil nil)
		       (">jbc" "[[file:/home/bw/Documents/Marked/Products/JBC/${1:filnavn}.pdf][$1]$0\n" "link JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkjbc" nil nil)
		       (">lenker" "[[file:~/Documents/markedsrapporter/${1:rapportnavn}.pdf][H:$1]$0 [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][J:$1]" "hjlinks" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenker" nil nil)
		       (">lenke" "[[file:/home/bw/Documents/markedsrapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "lenke linux" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenke" nil nil)
		       (">de" "[[file:/home/bw/Documents/Marked/Germany/rapporter/${1:filnavn}.pdf][$1]$0" "Germany" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/germany" nil nil)
		       (">fr" "[[file:/home/bw/Documents/Marked/France/rapporter/${1:filnavn}.pdf][$1]$0" "France" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/france" nil nil)
		       (">fi" "[[file:/home/bw/Documents/Marked/Finland/rapporter/${1:filnavn}.pdf][$1]$0" "Finland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/finland" nil nil)
		       (">bio" "[[file:/home/bw/Documents/Marked/Biodrivstoff/${1:filnavn}.pdf][$1]$0" "biofuels" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bio" nil nil)
		       (">be" "[[file:/home/bw/Documents/Marked/Belgium/rapporter/${1:filnavn}.pdf][$1]$0" "Belgium" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belgium" nil nil)
		       (">by" "[[file:/home/bw/Documents/Marked/Belarus/rapporter/${1:filnavn}.pdf][$1]$0" "Belarus" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belarus" nil nil)))


;;; Do not edit! File generated at Sun Apr 17 13:32:56 2022
