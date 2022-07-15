;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '((">wjbc" "|-------------+-------------+--------------+----------+---------|\n| component   | Eur/Afr/FSU | Asia&MidEast | Americas | comment |\n|-------------+-------------+--------------+----------+---------|\n| margins     |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| gasoline    |             |              |          |         |\n| naphtha     |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| distillates |             |              |          |         |\n| diesel      |             |              |          |         |\n| regrade     |             |              |          |         |\n| jet/kero    |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| hi-5        |             |              |          |         |\n| fuel oil    |             |              |          |         |\n| gasoil      |             |              |          |         |\n| hsfo        |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n\n\n" "Weekly JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/weeklyjbc" nil nil)
		       (">wmm" "**** Crude Oil Market\n***** Dated Brent and WTI\n****** NYMEX WTI\n      |------+------+-------+----------|\n      | date | pris |endring| kommentar|\n      |------+------+-------+----------|\n      |      |      |       |          |\n      |------+------+-------+----------|\n****** ICE Brent\n      |------+------+-------+----------|\n      | date | pris |endring| kommentar|\n      |------+------+-------+----------|\n      |      |      |       |          |\n      |------+------+-------+----------|\n***** Crude Differentials\n***** Forward Curve and Time Structure\n***** Crude Supply\n***** Other Crude Trade Flows\n***** Crude Storage\n***** Demand Indicators\n**** Refining Outlook\n***** Global Refinery Margins\n***** Global Refinery Outages\n***** Refinery Runs\n***** Scandinavian Refining Landscape 1\n***** Scandinavian Refining Landscape 2\n**** Key OpEx Drivers\n***** Natural Gas Prices\n****** NBP\n      |------+-------+-------+----------|\n      | date | front |curve  | kommentar|\n      |------+-------+-------+----------|\n      |      |       |       |          |\n      |------+-------+-------+----------|\n****** TTF\n      |------+------+-------+----------|\n      | date | front|curve | kommentar|\n      |------+------+-------+----------|\n      |      |      |       |          |\n      |------+------+-------+----------|\n****** LNG\n      |------+------+-------+----------|\n      | date | pris |endring| kommentar|\n      |------+------+-------+----------|\n      |      |      |       |          |\n      |------+------+-------+----------|\n****** Henry Hub\n      |------+------+-------+----------|\n      | date | pris |endring| kommentar|\n      |------+------+-------+----------|\n      |      |      |       |          |\n      |------+------+-------+----------|\n***** EU ETS Carbon Allowance\n**** Refined Products Market\n***** NWE Refine Products Trade\n***** Light Ends Cracks\n***** Light Ends Inventories\n***** Middle Distillate Cracks\n***** Middle Distillate Inventories\n***** Fuel Oil and Residue Cracks\n***** Fuel Oil and Residue Inventories\n**** Biofuels Markets\n***** Biodiesel & Feedstock Prices\n***** Renewable Diesel Prices\n" "weekly market meeting" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/weekly_market_meeting" nil nil)
		       (">ve" "[[file:/home/bw/Documents/Marked/Venezuela/rapporter/${1:filnavn}.pdf][$1]$0\n" "Venezuela" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/venezuela" nil nil)
		       (">us" "[[file:/home/bw/Documents/Marked/USA/rapporter/${1:filnavn}.pdf][$1]$0" "USA" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/usa" nil nil)
		       (">gb" "[[file:/home/bw/Documents/Marked/United_Kingdom/rapporter/${1:filnavn}.pdf][$1]$0" "United Kingdom" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/united_kingdom" nil nil)
		       (">ua" "[[file:/home/bw/Documents/Marked/Ukraine/rapporter/${1:filnavn}.pdf][$1]$0" "Ukraine" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ukraine" nil nil)
		       (">tr" "[[file:/home/bw/Documents/Marked/Turkey/rapporter/${1:filnavn}.pdf][$1]$0" "Turkey" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/turkey" nil nil)
		       (">tecon" "[[file:/home/bw/Documents/Histore_og_politikk/The_Economist/${1:filnavn}.pdf][$1]$0" "the economist" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/the_economist" nil nil)
		       (">th" "[[file:/home/bw/Documents/Marked/Thailand/rapporter/${1:filnavn}.pdf][$1]$0" "Thailand" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/thailand" nil nil)
		       (">kr" "[[file:/home/bw/Documents/Marked/Sørkorea/rapporter/${1:filnavn}.pdf][$1]$0\n" "Sørkorea" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sørkorea" nil nil)
		       (">se" "[[file:/home/bw/Documents/Marked/Sweden/rapporter/${1:filnavn}.pdf][$1]$0" "Sweden" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sweden" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "spglobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spglobal" nil nil)
		       (">es" "[[file:/home/bw/Documents/Marked/Spain/rapporter/${1:filnavn}.pdf][$1]$0\n" "Spain" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spain" nil nil)
		       (">za" "[[file:/home/bw/Documents/Marked/South_Africa/rapporter/${1:filnavn}.pdf][$1]$0\n" "South_Africa" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/south_africa" nil nil)
		       (">sa" "[[file:/home/bw/Documents/Marked/Saudi_Arabia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Saudi_Arabia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/saudi_arabia" nil nil)
		       (">ru" "[[file:/home/bw/Documents/Marked/Russia/rapporter/${1:filnavn}.pdf][$1]$0" "Russia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/russia" nil nil)
		       (">reg" ":PROPERTIES:    \n:bcma:      $1\n:site:      $2\n:port:      $3\n:status:    $4\n:start:     $5\n:storage:   $6\n:cntr:      $7\n:END:" "regasification" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/regasification" nil nil)
		       (">ref" ":PROPERTIES:\n:status:  $1\n:year:    $2\n:future:  $3\n:kbd:     $4\n:cntr:    $5\n:petchem: $6\n:risk:    $7\n:END:\n" "refinery" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/refinery" nil nil)
		       (">wmm" "" "weekly market meeting" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/products" nil nil)
		       (">pl" "[[file:/home/bw/Documents/Marked/Poland/rapporter/${1:filnavn}.pdf][$1]$0" "Poland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/poland" nil nil)
		       (">pic" "[[file:/home/bw/Pictures/${1:bilde}.png][${2:tekst}]" "zpic" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/pictures" nil nil)
		       (">pe" "[[file:/home/bw/Documents/Marked/Peru/rapporter/${1:filnavn}.pdf][$1]$0\n" "Peru" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/peru" nil nil)
		       (">pg" "[[file:/home/bw/Documents/Marked/Papua_New_Guinea/rapporter/${1:filnavn}.pdf][$1]$0\n" "Papua_New_Guinea" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/papua_new_guinea" nil nil)
		       (">om" "[[file:/home/bw/Documents/Marked/Oman/rapporter/${1:filnavn}.pdf][$1]$0" "Oman" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/oman" nil nil)
		       (">no" "[[file:/home/bw/Documents/Marked/Norway/rapporter/${1:filnavn}.pdf][$1]$0" "Norway" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/norway" nil nil)
		       (">nl" "[[file:/home/bw/Documents/Marked/Netherlands/rapporter/${1:filnavn}.pdf][$1]$0" "Netherlands" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/netherlands" nil nil)
		       (">mong" ":PROPERTIES:\n:kilde:       $1\n:regneark:    $2\n:ark:         $3\n:område:      $4\n:kommentar:   $5\n:nettside:    $6\n:END:" "mongstad" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/mong" nil nil)
		       (">mx" "[[file:/home/bw/Documents/Marked/Mexico/rapporter/${1:filnavn}.pdf][$1]$0\n" "Mexico" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/mexico" nil nil)
		       (">lu" "[[file:/home/bw/Documents/Marked/Luxembourg/rapporter/${1:filnavn}.pdf][$1]$0" "Luxembourg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/luxembourg" nil nil)
		       (">liq" ":PROPERTIES:\n:status:  $1\n:site:    $2\n:year:    $3 \n:mtpa:    $4 \n:trains:  $5\n:cntr:    $6  \n:END:\n\n\n" "liquefaction" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/liquefaction" nil nil)
		       (">wm" "[[file:/home/bw/Documents/Marked/Products/Wood_Mackenzie/${1:filnavn}.pdf][$1]$0\n" "Wood Mackenzie" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkwm" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkspg" nil nil)
		       (">oies" "[[file:/home/bw/Documents/Marked/Products/OIES/${1:filnavn}.pdf][$1]$0\n" "link OIES" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkoies" nil nil)
		       (">jbc" "[[file:/home/bw/Documents/Marked/Products/JBC/${1:filnavn}.pdf][$1]$0\n" "link JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkjbc" nil nil)
		       (">lenker" "[[file:~/Documents/markedsrapporter/${1:rapportnavn}.pdf][H:$1]$0 [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][J:$1]" "hjlinks" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenker" nil nil)
		       (">ea" "[[file:/home/bw/Documents/Marked/Products/Energy_Aspects/${1:filnavn}.pdf][$1]$0\n" "link Energy Aspects" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenkeea" nil nil)
		       (">lenke" "[[file:/home/bw/Documents/markedsrapporter/${1:filnavn}.pdf][${2:rapportnavn}]$0" "lenke linux" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenke" nil nil)
		       (">kw" "- [[file:/home/bw/Documents/Marked/Kuwait/rapporter/${1:filnavn}.pdf][$1]$0\n" "Kuwait" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/kuwait" nil nil)
		       (">jp" "[[file:/home/bw/Documents/Marked/Japan/rapporter/${1:filnavn}.pdf][$1]$0" "Japan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/japan" nil nil)
		       (">iq" "[[file:/home/bw/Documents/Marked/Iraq/rapporter/${1:filnavn}.pdf][$1]$0" "Iraq" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/iraq" nil nil)
		       (">ir" "[[file:/home/bw/Documents/Marked/Iran/rapporter/${1:filnavn}.pdf][$1]$0\n" "Iran" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/iran" nil nil)
		       (">id" "[[file:/home/bw/Documents/Marked/Indonesia/rapporter/${1:filnavn}.pdf][$1]$0" "Indonesia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/indonesia" nil nil)
		       (">in" "[[file:/home/bw/Documents/Marked/India/rapporter/${1:filnavn}.pdf][$1]$0" "India" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/india" nil nil)
		       (">ifp" "[[file:/home/bw/Documents/Marked/Products/IFP/${1:filnavn}.pdf][$1]$0\n" "IFP" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ifp" nil nil)
		       (">hu" "[[file:/home/bw/Documents/Marked/Hungary/rapporter/${1:filnavn}.pdf][$1]$0\n" "Hungary" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/hungary" nil nil)
		       (">gs" "[[file:/home/bw/Documents/Marked/Products/Goldman_Sachs/${1:filnavn}.pdf][$1]$0" "goldman sachs" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/goldman_sachs" nil nil)
		       (">de" "[[file:/home/bw/Documents/Marked/Germany/rapporter/${1:filnavn}.pdf][$1]$0" "Germany" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/germany" nil nil)
		       (">fr" "[[file:/home/bw/Documents/Marked/France/rapporter/${1:filnavn}.pdf][$1]$0" "France" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/france" nil nil)
		       (">fi" "[[file:/home/bw/Documents/Marked/Finland/rapporter/${1:filnavn}.pdf][$1]$0" "Finland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/finland" nil nil)
		       (">exxon" "[[file:/home/bw/Documents/Marked/Products/ExxonMobil/${1:filnavn}.pdf][$1]$0" "exxonmobil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/exxon" nil nil)
		       (">equi" "[[file:/home/bw/Documents/Marked/Products/Equinor/${1:filnavn}.pdf][$1]$0" "equinor" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/equinor" nil nil)
		       (">eutil" ":PROPERTIES:\n:reas1: $1\n:reas2: $2\n:reas3: $3\n:reas4: $4\n:reas5: $5\n:END:" "epa utilization" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_util" nil nil)
		       (">ebull" ":PROPERTIES:\n:bull1:  $1\n:bull2:  $2\n:bull3:  $3\n:bull4:  $4\n:bull5:  $5\n:END:" "epa bullets" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_bullets" nil nil)
		       (">ebrent" ":PROPERTIES:\n:sup1: $1\n:sup2: $2\n:sup3: $3\n:dem1: $4\n:dem2: $5\n:dem3: $6\n:END:" "epa_brent" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_brent" nil nil)
		       (">assum" ":PROPERTIES:\n:one:   $1\n:two:   $2\n:three: $3\n:four:  $4\n:five:  $5\n:six:   $6\n:END:" "assumptions" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_assum" nil nil)
		       (">erefdem" ":PROPERTIES:\n:dem1: $1\n:dem2: $2\n:dem3: $3\n:dem4: $4\n:dem5: $5\n:END:" "epa refinery demand" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ep_refdem" nil nil)
		       (">eg" "[[file:/home/bw/Documents/Marked/Egypt/rapporter/${1:filnavn}.pdf][$1]$0" "Egypt" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/egypt" nil nil)
		       (">dk" "- [ ] [[file:/home/bw/Documents/Marked/Denmark/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]" "Denmark" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/denmark" nil nil)
		       (">crude" ":PROPERTIES:\n:name:	  $1\n:country:  $2\n:api:      $3\n:sulfur:   $4\n:END:$0" "crude oil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/crude_oil" nil nil)
		       (">co" "[[file:/home/bw/Documents/Marked/Colombia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Colombia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/colombia" nil nil)
		       (">cn" "- [[file:/home/bw/Documents/Marked/China/rapporter/${1:filnavn}.pdf][$1]$0" "China" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/china" nil nil)
		       (">cl" "[[file:/home/bw/Documents/Marked/Chile/rapporter/${1:filnavn}.pdf][$1]$0\n" "Chile" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/chile" nil nil)
		       (">bio" "[[file:/home/bw/Documents/Marked/Biodrivstoff/${1:filnavn}.pdf][$1]$0" "biofuels" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bio" nil nil)
		       (">be" "[[file:/home/bw/Documents/Marked/Belgium/rapporter/${1:filnavn}.pdf][$1]$0\n" "Belgium" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belgium" nil nil)
		       (">by" "- [ ] [[file:/home/bw/Documents/Marked/Belarus/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]\n" "Belarus" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belarus" nil nil)
		       (">barcap" "[[file:/home/bw/Documents/Marked/Products/Barclays/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/barclays" nil nil)
		       (">bh" "[[file:/home/bw/Documents/Marked/Bahrain/rapporter/${1:filnavn}.pdf][$1]$0" "Bahrain" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bahrain" nil nil)
		       (">az" "[[file:/home/bw/Documents/Marked/Azerbaijan/rapporter/${1:filnavn}.pdf][$1]$0\n" "Azerbaijan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/azerbaijan" nil nil)
		       (">au" "[[file:/home/bw/Documents/Marked/Australia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Australia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/australia" nil nil)))


;;; Do not edit! File generated at Fri Jul 15 10:16:56 2022
