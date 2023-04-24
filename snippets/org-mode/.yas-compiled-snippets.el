;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '((">wmm" "* Crude Oil\n** Supply And Market Balance\n** Prices\n* Storage\n* Tradeflow And Fuel Substitution\n* Products\n** Gasoline\n** Diesel\n** Jet\n** Fuel Oil\n** LPG \n** Nafta\n* Opex\n** Gas Supply\n** ETS\n** Price\n* Refinery\n** Throughput\n** Margins\n** Outage\n** Gas Supply\n** Market\n** Tax and Energy Savings\n** ETS\n* Biofuels" "Weekly Market Meeting" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/wmm" nil nil)
		       (">wjbc" "|-------------+-------------+--------------+----------+---------|\n| component   | Eur/Afr/FSU | Asia&MidEast | Americas | comment |\n|-------------+-------------+--------------+----------+---------|\n| margins     |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| gasoline    |             |              |          |         |\n| naphtha     |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| distillates |             |              |          |         |\n| diesel      |             |              |          |         |\n| regrade     |             |              |          |         |\n| jet/kero    |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n| hi-5        |             |              |          |         |\n| fuel oil    |             |              |          |         |\n| gasoil      |             |              |          |         |\n| hsfo        |             |              |          |         |\n|-------------+-------------+--------------+----------+---------|\n\n\n" "Weekly JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/weeklyjbc" nil nil)
		       (">ve" "[[file:/home/bw/Documents/Marked/Venezuela/rapporter/${1:filnavn}.pdf][$1]$0\n" "Venezuela" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/venezuela" nil nil)
		       (">us" "[[file:/home/bw/Documents/Marked/USA/rapporter/${1:filnavn}.pdf][$1]$0" "USA" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/usa" nil nil)
		       (">gb" "[[file:/home/bw/Documents/Marked/United_Kingdom/rapporter/${1:filnavn}.pdf][$1]$0" "United Kingdom" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/united_kingdom" nil nil)
		       (">ua" "[[file:/home/bw/Documents/Marked/Ukraine/rapporter/${1:filnavn}.pdf][$1]$0" "Ukraine" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ukraine" nil nil)
		       (">tr" "[[file:/home/bw/Documents/Marked/Turkey/rapporter/${1:filnavn}.pdf][$1]$0" "Turkey" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/turkey" nil nil)
		       (">tecon" "[[file:/home/bw/Documents/Histore_og_politikk/The_Economist/${1:filnavn}.pdf][$1]$0" "the economist" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/the_economist" nil nil)
		       (">th" "[[file:/home/bw/Documents/Marked/Thailand/rapporter/${1:filnavn}.pdf][$1]$0" "Thailand" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/thailand" nil nil)
		       (">tw" "[[file:/home/bw/Documents/Marked/Taiwan/rapporter/${1:filnavn}.pdf][$1]$0\n" "Taiwan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/taiwan" nil nil)
		       (">kr" "[[file:/home/bw/Documents/Marked/Sørkorea/rapporter/${1:filnavn}.pdf][$1]$0\n" "Sørkorea" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sørkorea" nil nil)
		       (">ch" "[[file:/home/bw/Documents/Marked/Switzerland/rapporter/${1:filnavn}.pdf][$1]$0\n" "Switzerland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/switzerland" nil nil)
		       (">se" "[[file:/home/bw/Documents/Marked/Sweden/rapporter/${1:filnavn}.pdf][$1]$0" "Sweden" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/sweden" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "spglobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spglobal" nil nil)
		       (">es" "[[file:/home/bw/Documents/Marked/Spain/rapporter/${1:filnavn}.pdf][$1]$0\n" "Spain" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/spain" nil nil)
		       (">za" "[[file:/home/bw/Documents/Marked/South_Africa/rapporter/${1:filnavn}.pdf][$1]$0\n" "South_Africa" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/south_africa" nil nil)
		       (">sa" "[[file:/home/bw/Documents/Marked/Saudi_Arabia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Saudi_Arabia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/saudi_arabia" nil nil)
		       (">ru" "[[file:/home/bw/Documents/Marked/Russia/rapporter/${1:filnavn}.pdf][$1]$0" "Russia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/russia" nil nil)
		       (">ro" "[[file:/home/bw/Documents/Marked/Romania/rapporter/${1:filnavn}.pdf][$1]$0" "Romania" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/romania" nil nil)
		       (">reg" ":PROPERTIES:    \n:bcma:      $1\n:site:      $2\n:port:      $3\n:status:    $4\n:start:     $5\n:storage:   $6\n:cntr:      $7\n:END:" "regasification" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/regasification" nil nil)
		       (">ref" ":PROPERTIES:\n:status:  $1\n:year:    $2\n:future:  $3\n:kbd:     $4\n:cntr:    $5\n:petchem: $6\n:risk:    $7\n:END:\n" "refinery" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/refinery" nil nil)
		       (">raft" "|---------*-----------------+-----------------+------------|\n|raffineri| operasjonell kbd| konstruksjon kbd| stengt kbd |\n|---------*-----------------+-----------------+------------|\n||||\n|---------*-----------------+-----------------+------------|\n#+tblfm: @>$2=vsum(@II..@III)::@>$3=vsum(@II..@III)::@>$4=vsum(@II..@III)\n\n\n" "Raffineritabell" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/rafftab" nil nil)
		       (">pr" "[[file:/home/bw/Documents/Marked/Puerto_Rico/rapporter/${1:filnavn}.pdf][$1]$0" "Puerto Rico" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/puerto_rico" nil nil)
		       (">wmm" "" "weekly market meeting" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/products" nil nil)
		       (">pt" "[[file:/home/bw/Documents/Marked/Portugal/rapporter/${1:filnavn}.pdf][$1]$0" "Portugal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/portugal" nil nil)
		       (">pl" "[[file:/home/bw/Documents/Marked/Poland/rapporter/${1:filnavn}.pdf][$1]$0" "Poland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/poland" nil nil)
		       (">pic" "[[file:/home/bw/Pictures/${1:bilde}.png][${2:tekst}]" "zpic" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/pictures" nil nil)
		       (">pe" "[[file:/home/bw/Documents/Marked/Peru/rapporter/${1:filnavn}.pdf][$1]$0\n" "Peru" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/peru" nil nil)
		       (">pg" "[[file:/home/bw/Documents/Marked/Papua_New_Guinea/rapporter/${1:filnavn}.pdf][$1]$0\n" "Papua_New_Guinea" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/papua_new_guinea" nil nil)
		       (">pk" "[[file:/home/bw/Documents/Marked/Pakistan/rapporter/${1:filnavn}.pdf][$1]$0" "Pakistan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/pakistan" nil nil)
		       (">om" "[[file:/home/bw/Documents/Marked/Oman/rapporter/${1:filnavn}.pdf][$1]$0" "Oman" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/oman" nil nil)
		       (">no" "[[file:/home/bw/Documents/Marked/Norway/rapporter/${1:filnavn}.pdf][$1]$0" "Norway" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/norway" nil nil)
		       (">ng" "[[file:/home/bw/Documents/Marked/Nigeria/rapporter/${1:filnavn}.pdf][$1]$0\n" "Nigeria" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/nigeria" nil nil)
		       (">ni" "[[file:/home/bw/Documents/Marked/Nicaragua/rapporter/${1:filnavn}.pdf][$1]$0" "Nicaragua" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/nicaragua" nil nil)
		       (">nl" "[[file:/home/bw/Documents/Marked/Netherlands/rapporter/${1:filnavn}.pdf][$1]$0" "Netherlands" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/netherlands" nil nil)
		       (">mm" "[[file:/home/bw/Documents/Marked/Myanmar/rapporter/${1:filnavn}.pdf][$1]$0" "Myanmar" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/myanmar" nil nil)
		       (">mong" ":PROPERTIES:\n:kilde:       $1\n:regneark:    $2\n:ark:         $3\n:område:      $4\n:kommentar:   $5\n:nettside:    $6\n:END:" "mongstad" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/mong" nil nil)
		       (">mx" "[[file:/home/bw/Documents/Marked/Mexico/rapporter/${1:filnavn}.pdf][$1]$0\n" "Mexico" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/mexico" nil nil)
		       (">mw" "[[file:/home/bw/Documents/Marked/Malawi/rapporter/${1:filnavn}.pdf][$1]$0" "Malawi" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/malawi" nil nil)
		       (">lu" "[[file:/home/bw/Documents/Marked/Luxembourg/rapporter/${1:filnavn}.pdf][$1]$0" "Luxembourg" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/luxembourg" nil nil)
		       (">liq" ":PROPERTIES:\n:status:  $1\n:site:    $2\n:year:    $3 \n:mtpa:    $4 \n:trains:  $5\n:cntr:    $6  \n:END:\n\n\n" "liquefaction" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/liquefaction" nil nil)
		       (">wm" "[[file:/home/bw/Documents/Marked/Products/Wood_Mackenzie/${1:filnavn}.pdf][$1]$0\n" "Wood Mackenzie" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkwm" nil nil)
		       (">spg" "[[file:/home/bw/Documents/Marked/Products/SPGlobal/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkspg" nil nil)
		       (">oies" "[[file:/home/bw/Documents/Marked/Products/OIES/${1:filnavn}.pdf][$1]$0\n" "link OIES" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkoies" nil nil)
		       (">jbc" "[[file:/home/bw/Documents/Marked/Products/JBC/${1:filnavn}.pdf][$1]$0\n" "link JBC" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/linkjbc" nil nil)
		       (">lenker" "[[file:~/Documents/markedsrapporter/${1:rapportnavn}.pdf][H:$1]$0 [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][J:$1]" "hjlinks" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenker" nil nil)
		       (">ea" "[[file:/home/bw/Documents/Marked/Products/Energy_Aspects/${1:filnavn}.pdf][$1]$0\n" "link Energy Aspects" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenkeea" nil nil)
		       (">lenke" "[[file:/home/bw/Documents/markedsrapporter/${1:filnavn}.pdf][$1]$0" "lenke linux" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/lenke" nil nil)
		       (">kw" "- [[file:/home/bw/Documents/Marked/Kuwait/rapporter/${1:filnavn}.pdf][$1]$0\n" "Kuwait" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/kuwait" nil nil)
		       (">jp" "[[file:/home/bw/Documents/Marked/Japan/rapporter/${1:filnavn}.pdf][$1]$0" "Japan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/japan" nil nil)
		       (">it" "[[file:/home/bw/Documents/Marked/Italia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Italy" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/italy" nil nil)
		       (">il" "[[file:/home/bw/Documents/Marked/Israel/rapporter/${1:filnavn}.pdf][$1]$0\n" "Israel" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/israel" nil nil)
		       (">ie" "[[file:/home/bw/Documents/Marked/Irelandv/rapporter/${1:filnavn}.pdf][$1]$0" "Ireland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ireland" nil nil)
		       (">iq" "[[file:/home/bw/Documents/Marked/Iraq/rapporter/${1:filnavn}.pdf][$1]$0" "Iraq" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/iraq" nil nil)
		       (">ir" "[[file:/home/bw/Documents/Marked/Iran/rapporter/${1:filnavn}.pdf][$1]$0\n" "Iran" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/iran" nil nil)
		       (">id" "[[file:/home/bw/Documents/Marked/Indonesia/rapporter/${1:filnavn}.pdf][$1]$0" "Indonesia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/indonesia" nil nil)
		       (">in" "[[file:/home/bw/Documents/Marked/India/rapporter/${1:filnavn}.pdf][$1]$0" "India" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/india" nil nil)
		       (">ifp" "[[file:/home/bw/Documents/Marked/Products/IFP/${1:filnavn}.pdf][$1]$0\n" "IFP" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ifp" nil nil)
		       (">hu" "[[file:/home/bw/Documents/Marked/Hungary/rapporter/${1:filnavn}.pdf][$1]$0\n" "Hungary" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/hungary" nil nil)
		       (">hn" "[[file:/home/bw/Documents/Marked/Honduras/rapporter/${1:filnavn}.pdf][$1]$0" "Honduras" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/honduras" nil nil)
		       (">gt" "[[file:/home/bw/Documents/Marked/Guatemala/rapporter/${1:filnavn}.pdf][$1]$0" "Guatemala" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/guatemala" nil nil)
		       (">gr" "[[file:/home/bw/Documents/Marked/Greece/rapporter/${1:filnavn}.pdf][$1]$0" "Greece" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/greece" nil nil)
		       (">gs" "[[file:/home/bw/Documents/Marked/Products/Goldman_Sachs/${1:filnavn}.pdf][$1]$0" "goldman sachs" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/goldman_sachs" nil nil)
		       (">gh" "[[file:/home/bw/Documents/Marked/Ghana/rapporter/${1:filnavn}.pdf][$1]$0" "Ghana" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ghana" nil nil)
		       (">de" "[[file:/home/bw/Documents/Marked/Germany/rapporter/${1:filnavn}.pdf][$1]$0" "Germany" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/germany" nil nil)
		       (">ga" "[[file:/home/bw/Documents/Marked/Gabon/rapporter/${1:filnavn}.pdf][$1]$0" "Gabon" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/gabon" nil nil)
		       (">fr" "[[file:/home/bw/Documents/Marked/France/rapporter/${1:filnavn}.pdf][$1]$0" "France" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/france" nil nil)
		       (">fi" "[[file:/home/bw/Documents/Marked/Finland/rapporter/${1:filnavn}.pdf][$1]$0" "Finland" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/finland" nil nil)
		       (">fintim" "[[file:/home/bw/Documents/Marked/Products/FT/${1:filnavn}.pdf][$1]$0" "financial times" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/financial_times" nil nil)
		       (">exxon" "[[file:/home/bw/Documents/Marked/Products/ExxonMobil/${1:filnavn}.pdf][$1]$0" "exxonmobil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/exxon" nil nil)
		       (">equi" "[[file:/home/bw/Documents/Marked/Products/Equinor/${1:filnavn}.pdf][$1]$0" "equinor" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/equinor" nil nil)
		       (">eutil" ":PROPERTIES:\n:reas1: $1\n:reas2: $2\n:reas3: $3\n:reas4: $4\n:reas5: $5\n:END:" "epa utilization" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_util" nil nil)
		       (">ebull" ":PROPERTIES:\n:bull1:  $1\n:bull2:  $2\n:bull3:  $3\n:bull4:  $4\n:bull5:  $5\n:END:" "epa bullets" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_bullets" nil nil)
		       (">ebrent" ":PROPERTIES:\n:sup1: $1\n:sup2: $2\n:sup3: $3\n:dem1: $4\n:dem2: $5\n:dem3: $6\n:END:" "epa_brent" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_brent" nil nil)
		       (">assum" ":PROPERTIES:\n:one:   $1\n:two:   $2\n:three: $3\n:four:  $4\n:five:  $5\n:six:   $6\n:END:" "assumptions" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/epa_assum" nil nil)
		       (">erefdem" ":PROPERTIES:\n:dem1: $1\n:dem2: $2\n:dem3: $3\n:dem4: $4\n:dem5: $5\n:END:" "epa refinery demand" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/ep_refdem" nil nil)
		       (">eg" "[[file:/home/bw/Documents/Marked/Egypt/rapporter/${1:filnavn}.pdf][$1]$0" "Egypt" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/egypt" nil nil)
		       (">dk" "[[file:/home/bw/Documents/Marked/Denmark/rapporter/${1:filnavn}.pdf][$1]$0\n" "Denmark" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/denmark" nil nil)
		       (">dailies" "* Arbeid\n** Marked\n:markedsrapporter:\n$0\n:end:\n*** [[id:7ef4f549-3ada-47c7-8829-73f0a5a65801][råolje]]\n**** marked\n**** [[id:672f32f5-2b41-4c62-bc48-53a458231609][raffineri]]\n**** [[id:99960b50-5fc1-4369-afc7-cc5fb9d5042f][Russland]] & [[id:642e87de-0cb4-49ad-9c3f-7963bb4895a0][russisk-produktflyt-etter-krigsstart]]\n*** naturgass\n**** marked\n**** [[id:6b442a80-5cb2-4f6b-a265-3962d93a1e0a][LNG]]\n** Bearbeiding\n\n** Møter\n\n** Diskusjon\n\n* Agenda [/]\n  - [ ] Neste arbeidsdags møter\n* Refleksjoner" "dailies" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/dailies" nil nil)
		       (">dgl" "[[file:/home/bw/GitHub/daglige_notater/${1:filnavn}.org][$1]$0" "daglenke" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/daglenke" nil nil)
		       (">cw" "[[file:/home/bw/Documents/Marked/Curacao/rapporter/${1:filnavn}.pdf][$1]$0\n" "Curacao" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/curacao" nil nil)
		       (">crude" ":PROPERTIES:\n:name:	  $1\n:country:  $2\n:api:      $3\n:sulfur:   $4\n:END:$0" "crude oil" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/crude_oil" nil nil)
		       (">cr" "[[file:/home/bw/Documents/Marked/Costa_Rica/rapporter/${1:filnavn}.pdf][$1]$0" "Costa Rica" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/costa_rica" nil nil)
		       (">cg" "[[file:/home/bw/Documents/Marked/Congo_Brazzaville/rapporter/${1:filnavn}.pdf][$1]$0" "Congo Brazzaville" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/congo_brazzaville" nil nil)
		       (">co" "[[file:/home/bw/Documents/Marked/Colombia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Colombia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/colombia" nil nil)
		       (">cn" "- [[file:/home/bw/Documents/Marked/China/rapporter/${1:filnavn}.pdf][$1]$0" "China" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/china" nil nil)
		       (">cl" "[[file:/home/bw/Documents/Marked/Chile/rapporter/${1:filnavn}.pdf][$1]$0\n" "Chile" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/chile" nil nil)
		       (">cv" "[[file:/home/bw/Documents/Marked/Cape_Verde/rapporter/${1:filnavn}.pdf][$1]$0" "Cape Verde" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/cape_verde" nil nil)
		       (">ca" "[[file:/home/bw/Documents/Marked/Canada/rapporter/${1:filnavn}.pdf][$1]$0\n" "Canada" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/canada" nil nil)
		       (">bg" "[[file:/home/bw/Documents/Marked/Bulgaria/rapporter/${1:filnavn}.pdf][$1]$0" "Bulgaria" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bulgaria" nil nil)
		       (">bio" "[[file:/home/bw/Documents/Marked/Biodrivstoff/${1:filnavn}.pdf][$1]$0" "biofuels" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bio" nil nil)
		       (">bz" "[[file:/home/bw/Documents/Marked/Belize/rapporter/${1:filnavn}.pdf][$1]$0" "Belize" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belize" nil nil)
		       (">be" "[[file:/home/bw/Documents/Marked/Belgium/rapporter/${1:filnavn}.pdf][$1]$0\n" "Belgium" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belgium" nil nil)
		       (">by" "- [ ] [[file:/home/bw/Documents/Marked/Belarus/rapporter/${1:filnavn}.pdf][$1]$0\n- [[file:C:\\Users\\bjorwa\\OneDrive - Equinor\\reports\\$1.pdf][Win:$1]]\n" "Belarus" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/belarus" nil nil)
		       (">barcap" "[[file:/home/bw/Documents/Marked/Products/Barclays/${1:filnavn}.pdf][$1]$0" "SPGlobal" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/barclays" nil nil)
		       (">bd" "[[file:/home/bw/Documents/Marked/Bangladesh/rapporter/${1:filnavn}.pdf][$1]$0" "Bangladesh" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bangladesh" nil nil)
		       (">bh" "[[file:/home/bw/Documents/Marked/Bahrain/rapporter/${1:filnavn}.pdf][$1]$0" "Bahrain" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/bahrain" nil nil)
		       (">az" "[[file:/home/bw/Documents/Marked/Azerbaijan/rapporter/${1:filnavn}.pdf][$1]$0\n" "Azerbaijan" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/azerbaijan" nil nil)
		       (">au" "[[file:/home/bw/Documents/Marked/Australia/rapporter/${1:filnavn}.pdf][$1]$0\n" "Australia" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/australia" nil nil)
		       (">ao" "[[file:/home/bw/Documents/Marked/Angola/rapporter/${1:filnavn}.pdf][$1]$0" "Angola" nil nil nil "/home/bw/GitHub/emacs-config/snippets/org-mode/angola" nil nil)))


<<<<<<< HEAD
;;; Do not edit! File generated at Thu Mar 23 08:08:38 2023
=======
;;; Do not edit! File generated at Fri Apr 14 10:11:05 2023
>>>>>>> 36ee818 (nye yasnippets for land)
