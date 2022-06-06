;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '((">us" "[[file:/home/bw/Documents/Marked/USA/rapporter/${1:filnavn}.pdf][${1]$0" "USA" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/usa" nil nil)
		       (">gb" "[[file:/home/bw/Documents/Marked/United_Kingdom/rapporter/${1:filnavn}.pdf][$1]$0" "United Kingdom" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/united_kingdom" nil nil)
		       (">ua" "[[file:/home/bw/Documents/Marked/Ukraine/rapporter/${1:filnavn}.pdf][$1]$0" "Ukraine" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ukraine" nil nil)
		       (">tr" "[[file:/home/bw/Documents/Marked/Turkey/rapporter/${1:filnavn}.pdf][$1]$0" "Turkey" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/turkey" nil nil)
		       (">tecon" "[[file:/home/bw/Documents/Histore_og_politikk/The_Economist/${1:filnavn}.pdf][$1]$0" "the economist" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/the_economist" nil nil)
		       (">se" "[[file:/home/bw/Documents/Marked/Sweden/rapporter/${1:filnavn}.pdf][$1]$0" "Sweden" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sweden" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "spglobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spglobal" nil nil)
		       (">ru" "[[file:/home/bw/Documents/Marked/Russia/rapporter/${1:filnavn}.pdf][$1]$0" "Russia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/russia" nil nil)
		       (">reg" ":PROPERTIES:    \n:cap_bcma:      $1\n:site:          $2\n:port:          $3\n:status:        $4\n:start_year:    $5\n:end_y:         \n:operator:      $6\n:capex:         $7\n:port_cost:     \n:regas_cost:        \n:storage_cbm:   $8\n:END:" "zzreg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/regasification" nil nil)
		       (">ref" ":PROPERTIES:\n:status:  $1\n:year:    $2\n:future:  $3\n:kbd:     $4\n:cntr:    $5\n:risk:    $6\n:END:\n" "refinery" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/refinery" nil nil)
		       (">wmm" "" "weekly market meeting" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/products" nil nil)
		       (">pl" "[[file:/home/bw/Documents/Marked/Poland/rapporter/${1:filnavn}.pdf][$1]$0" "Poland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/poland" nil nil)
		       (">pic" "[[file:/home/bw/Pictures/${1:bilde}.png][${2:tekst}]" "zpic" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/pictures" nil nil)
		       (">om" "[[file:/home/bw/Documents/Marked/Oman/rapporter/${1:filnavn}.pdf][$1]$0" "Oman" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/oman" nil nil)
		       (">no" "[[file:/home/bw/Documents/Marked/Norway/rapporter/${1:filnavn}.pdf][$1]$0" "Norway" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/norway" nil nil)
		       (">nl" "[[file:/home/bw/Documents/Marked/Netherlands/rapporter/${1:filnavn}.pdf][$1]$0" "Netherlands" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/netherlands" nil nil)
		       (">mong" ":PROPERTIES:\n:kilde:       $1\n:regneark:    $2\n:ark:         $3\n:område:      $4\n:kommentar:   $5\n:nettside:    $6\n:END:" "mongstad" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/mong" nil nil)
		       (">lu" "[[file:/home/bw/Documents/Marked/Luxembourg/rapporter/${1:filnavn}.pdf][$1]$0" "Luxembourg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/luxembourg" nil nil)
		       (">liq" ":PROPERTIES:\n:cap_mtpa:   $1  \n:trains:     $2\n:site:       $3\n:type:       $4\n:status:     $5\n:FID:        $6\n:startY:     $7\n:end_y:      \n:operator:   $8\n:capex:      $9\n:opex: \n:location:   $10  \n:END:" "zzliq" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/liquefaction" nil nil)
		       (">wm" "[[file:/home/bw/Documents/Marked/Products/Wood_Mackenzie/${1:filnavn}.pdf][$1]$0\n" "Wood Mackenzie" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkwm" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkspg" nil nil)
		       (">oies" "[[file:/home/bw/Documents/Marked/Products/OIES/${1:filnavn}.pdf][$1]$0\n" "link OIES" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkoies" nil nil)
		       (">jbc" "[[file:/home/bw/Documents/Marked/Products/JBC/${1:filnavn}.pdf][$1]$0\n" "link JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkjbc" nil nil)
		       (">lenker" "[[file:~/Documents/markedsrapporter/${1:rapportnavn}.pdf][H:$1]$0 [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][J:$1]" "hjlinks" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenker" nil nil)
		       (">ea" "[[file:/home/bw/Documents/Marked/Products/Energy_Aspects/${1:filnavn}.pdf][$1]$0\n" "link Energy Aspects" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenkeea" nil nil)
		       (">lenke" "[[file:/home/bw/Documents/markedsrapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "lenke linux" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenke" nil nil)
		       (">jp" "[[file:/home/bw/Documents/Marked/Japan/rapporter/${1:filnavn}.pdf][$1]$0" "Japan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/japan" nil nil)
		       (">ifp" "[[file:/home/bw/Documents/Marked/Products/IFP/${1:filnavn}.pdf][$1]$0\n" "IFP" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ifp" nil nil)
		       (">gs" "[[file:/home/bw/Documents/Marked/Products/Goldman_Sachs/${1:filnavn}.pdf][$1]$0" "goldman sachs" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/goldman_sachs" nil nil)
		       (">de" "[[file:/home/bw/Documents/Marked/Germany/rapporter/${1:filnavn}.pdf][$1]$0" "Germany" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/germany" nil nil)
		       (">fr" "[[file:/home/bw/Documents/Marked/France/rapporter/${1:filnavn}.pdf][$1]$0" "France" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/france" nil nil)
		       (">fi" "[[file:/home/bw/Documents/Marked/Finland/rapporter/${1:filnavn}.pdf][$1]$0" "Finland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/finland" nil nil)
		       (">exxon" "[[file:/home/bw/Documents/Marked/Products/ExxonMobil/${1:filnavn}.pdf][$1]$0" "exxonmobil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/exxon" nil nil)
		       (">equinor" "[[file:/home/bw/Documents/Marked/Products/Equinor/${1:filnavn}.pdf][$1]$0" "equinor" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/equinor" nil nil)
		       (">eutil" ":PROPERTIES:\n:reas1: $1\n:reas2: $2\n:reas3: $3\n:reas4: $4\n:reas5: $5\n:END:" "epa utilization" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_util" nil nil)
		       (">ebull" ":PROPERTIES:\n:bull1:  $1\n:bull2:  $2\n:bull3:  $3\n:bull4:  $4\n:bull5:  $5\n:END:" "epa bullets" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_bullets" nil nil)
		       (">ebrent" ":PROPERTIES:\n:sup1: $1\n:sup2: $2\n:sup3: $3\n:dem1: $4\n:dem2: $5\n:dem3: $6\n:END:" "epa_brent" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_brent" nil nil)
		       (">assum" ":PROPERTIES:\n:one:   $1\n:two:   $2\n:three: $3\n:four:  $4\n:five:  $5\n:six:   $6\n:END:" "assumptions" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_assum" nil nil)
		       (">erefdem" ":PROPERTIES:\n:dem1: $1\n:dem2: $2\n:dem3: $3\n:dem4: $4\n:dem5: $5\n:END:" "epa refinery demand" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ep_refdem" nil nil)
		       (">dk" "- [ ] [[file:/home/bw/Documents/Marked/Denmark/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]" "Denmark" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/denmark" nil nil)
		       (">crude" ":PROPERTIES:\n:name:	  $1\n:country:  $2\n:api:      $3\n:sulfur:   $4\n:END:$0" "crude oil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/crude_oil" nil nil)
		       (">cn" "- [ ] [[file:/home/bw/Documents/Marked/China/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]" "China" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/china" nil nil)
		       (">bio" "[[file:/home/bw/Documents/Marked/Biodrivstoff/${1:filnavn}.pdf][$1]$0" "biofuels" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bio" nil nil)
		       (">be" "- [ ] [[file:/home/bw/Documents/Marked/Belgium/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]" "Belgium" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belgium" nil nil)
		       (">by" "- [ ] [[file:/home/bw/Documents/Marked/Belarus/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]\n" "Belarus" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belarus" nil nil)
		       (">barcap" "[[file:/home/bw/Documents/Marked/Products/Barclays/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/barclays" nil nil)))


;;; Do not edit! File generated at Mon Jun  6 13:46:04 2022
