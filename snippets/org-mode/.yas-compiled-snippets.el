;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("zzreg" ":PROPERTIES:    \n\n:cap_bcma:     \n\n:site:          onshore/FSRU\n\n:port:         \n\n:status:        operational/under-construction/speculative\n\n:start_year:    20\n\n:end_y:         20\n\n:operator:     \n\n:capex:        \n\n:port_cost:    \n\n:regas_cost:        \n\n:storage_cbm:\n\n:END:" "zzreg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/zzreg" nil nil)
		       ("zzpro" "[[/home/bw/Documents/Marked/Products/][]\n" "mappe-products" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/zzpro" nil nil)
		       (">pic" "[[file:/home/bw/Pictures/${1:bilde}.png][${2:navn}]" "zpic" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/zzpic" nil nil)
		       ("zzliq" ":PROPERTIES:\n:cap_mtpa:   \n:trains:     \n:site:       onshore/FLNG\n:type:       greenfield/brownfield/expansion\n:status:     operational/under-construction/speculative/cancelled\n:FID:        20\n:startY:     20\n:end_y:      20\n:operator:  \n:capex:     \n:opex:\n:location:  \n:END:" "zzliq" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/zzliq" nil nil)
		       (">us" "[[file:/home/bw/Documents/Marked/USA/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "USA" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/usa" nil nil)
		       (">uk" "[[file:/home/bw/Documents/Marked/United_Kingdom/rapporter/${1:filnavn}.pdf][${2:rapport}]$0" "United Kingdom" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/united_kingdom" nil nil)
		       (">ua" "[[file:/home/bw/Documents/Marked/Ukraine/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Ukraine" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ukraine" nil nil)
		       (">tr" "[[file:/home/bw/Documents/Marked/Turkey/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Turkey" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/turkey" nil nil)
		       (">se" "[[file:/home/bw/Documents/Marked/Sweden/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Sweden" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sweden" nil nil)
		       (">spglobal" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][${2:rapportnavn}]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spglobal" nil nil)
		       (">ru" "[[file:/home/bw/Documents/Marked/Russia/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Russia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/russia" nil nil)
		       (">pl" "[[file:/home/bw/Documents/Marked/Poland/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Poland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/poland" nil nil)
		       ("qqorc" "* beskrivelse\n* relatert\n* kilder" "org-roam" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/oroam" nil nil)
		       (">no" "[[file:/home/bw/Documents/Marked/Norway/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Norway" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/norway" nil nil)
		       (">nl" "[[file:/home/bw/Documents/Marked/Netherlands/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Netherlands" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/netherlands" nil nil)
		       (">lu" "[[file:/home/bw/Documents/Marked/Luxembourg/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Luxembourg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/luxembourg" nil nil)
		       (">wm" "[[file:/home/bw/Documents/Marked/Products/Wood_Mackenzie/${1:filnavn}.pdf][${2:filnavn}]\n" "Wood Mackenzie" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkwm" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][${2:filnavn}]" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkspg" nil nil)
		       (">oies" "[[file:/home/bw/Documents/Marked/Products/OIES/${1:filnavn}.pdf][${2:filnavn}]\n" "link OIES" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkoies" nil nil)
		       (">jbc" "[[file:/home/bw/Documents/Marked/Products/JBC/${1:filnavn}.pdf][${2:filnavn}]\n" "link JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkjbc" nil nil)
		       (">lenke" "[[file:/home/bw/Documents/markedsrapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "lenke linux" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenke" nil nil)
		       ("zzz" "[[file:~/Documents/markedsrapporter/.pdf][H:]\n[[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\.pdf][J:]" "hjlinks" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/hjlinks" nil nil)
		       (">de" "[[file:/home/bw/Documents/Marked/Germany/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Germany" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/germany" nil nil)
		       (">fr" "[[file:/home/bw/Documents/Marked/France/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "France" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/france" nil nil)
		       (">fi" "[[file:/home/bw/Documents/Marked/Finland/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Finland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/finland" nil nil)
		       (">bio" "[[file:/home/bw/Documents/Marked/Biodrivstoff/${1:filnavn}.pdf][${2:rapportnavn}]$0" "biofuels" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bio" nil nil)
		       (">be" "[[file:/home/bw/Documents/Marked/Belgium/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Belgium" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belgium" nil nil)
		       (">by" "[[file:/home/bw/Documents/Marked/Belarus/rapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "Belarus" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belarus" nil nil)
		       ("qqorc" "* beskrivelse\n* relatert\n* kilder" "org-roam" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/+new-snippet+" nil nil)))


;;; Do not edit! File generated at Tue Apr 12 10:58:22 2022
