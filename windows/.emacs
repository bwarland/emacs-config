
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/pakker.el")
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/winreg.el")

(load-file "C:Users/bjorwa/AppData/Roaming/.emacs.d/reg.el")
(load-file "C:Users/bjorwa/AppData/Roaming/.emacs.d/custom.el")

;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/gkb.el")
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/generelt.el")
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/maler.el")

(load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/org-agenda.el")
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/agenda-files.el")
(load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/orgtodo.el")

;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/agenda-files.el")
;; (load-file "C:Users/bjorwa/Documents/GitHub/emacs-config/org-konf.el")

(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
			 ("org" . "https://orgmode.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ebdbb2" "#9d0006" "#98971a" "#b57614" "#076678" "#d3869b" "#689d6a" "#3c3836"])
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#689d6a")
 '(cua-normal-cursor-color "#7c6f64")
 '(cua-overwrite-cursor-color "#b57614")
 '(cua-read-only-cursor-color "#98971a")
 '(custom-enabled-themes '(flatland))
 '(custom-safe-themes
   '("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ae88c445c558b7632fc2d72b7d4b8dfb9427ac06aa82faab8d760fff8b8f243c" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "33ea268218b70aa106ba51a85fe976bfae9cf6931b18ceaf57159c558bbcd1e6" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "54449a089fc2f95f99ebc9b9b6067c802532fd50097cf44c46a53b4437d5c6cc" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(edwina-keymap-prefix "^W")
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(fci-rule-color "#ebdbb2")
 '(gnus-logo-colors '("#0d7b72" "#adadad"))
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };"))
 '(highlight-changes-colors '("#d3869b" "#8f3f71"))
 '(highlight-symbol-colors
   '("#ecd19a" "#d5dbae" "#eabb92" "#e0c3b1" "#e3d99d" "#eec394" "#c5ccb3"))
 '(highlight-symbol-foreground-color "#665c54")
 '(highlight-tail-colors
   '(("#ebdbb2" . 0)
     ("#c6c148" . 20)
     ("#82cc73" . 30)
     ("#5b919b" . 50)
     ("#e29a3f" . 60)
     ("#df6835" . 70)
     ("#f598a7" . 85)
     ("#ebdbb2" . 100)))
 '(hl-bg-colors
   '("#e29a3f" "#df6835" "#cf5130" "#f598a7" "#c2608f" "#5b919b" "#82cc73" "#c6c148"))
 '(hl-fg-colors
   '("#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7"))
 '(hl-paren-background-colors '("#2492db" "#95a5a6" nil))
 '(hl-paren-colors '("#689d6a" "#b57614" "#076678" "#8f3f71" "#98971a"))
 '(lsp-ui-doc-border "#665c54")
 '(nrepl-message-colors
   '("#9d0006" "#af3a03" "#b57614" "#747400" "#c6c148" "#004858" "#689d6a" "#d3869b" "#8f3f71"))
 '(org-agenda-files
   '("c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/jp.org"  "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/reg.org" "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/liq.org" "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/balanse.org" "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/bd.org" "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/pk.org" "c:/Users/bjorwa/Documents/GitHub/Markedsanalyse/journaler/journal.org"))
 '(org-export-with-priority t)
 '(org-modules '(ol-info ol-mhe ol-rmail ol-w3m))
 '(package-selected-packages
   '(rainbow-mode doom-themes doom doom-modeline discover-my-major org-super-agenda treemacs-icons-dired treemacs-all-the-icons treemacs elpy pyenv-mode-auto pyenv-mode flatui-theme alect-themes anti-zenburn-theme helm-descbinds multiple-cursors use-package-hydra major-mode-hydra ivy-hydra esup quelpa org-plus-contrib swiper-helm org-autolist org-bullets hl-sentence org-grep boxquote hydra which-key helm-org flatland-black-theme use-package racket-mode helm geiser flatland-theme))
 '(pdf-view-midnight-colors '("#232333" . "#c7c7c7"))
 '(pos-tip-background-color "#ebdbb2")
 '(pos-tip-foreground-color "#665c54")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#98971a" "#ebdbb2" 0.2))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(term-default-bg-color "#fbf1c7")
 '(term-default-fg-color "#7c6f64")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#9d0006")
     (40 . "#aa4a0b")
     (60 . "#b0600f")
     (80 . "#b57614")
     (100 . "#ac8115")
     (120 . "#a78716")
     (140 . "#a28c17")
     (160 . "#9d9118")
     (180 . "#98971a")
     (200 . "#8b993a")
     (220 . "#849a47")
     (240 . "#7b9b53")
     (260 . "#729c5e")
     (280 . "#689d6a")
     (300 . "#4d8670")
     (320 . "#3e7b73")
     (340 . "#2a7075")
     (360 . "#076678")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#fbf1c7" "#ebdbb2" "#750000" "#9d0006" "#747400" "#98971a" "#8a5100" "#b57614" "#004858" "#076678" "#9f4d64" "#d3869b" "#2e7d33" "#689d6a" "#7c6f64" "#3c3836"))
 '(xterm-color-names
   ["#ebdbb2" "#9d0006" "#98971a" "#b57614" "#076678" "#d3869b" "#689d6a" "#32302f"])
 '(xterm-color-names-bright
   ["#fbf1c7" "#af3a03" "#a89984" "#3c3836" "#7c6f64" "#8f3f71" "#665c54" "#282828"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

