;;; package: --- A theme inspired by the colors of the famous painting by Katsushika Hokusa
;;; Commentary: Original theme created by rebelot see: https://github.com/rebelot/kanagawa.nvim
;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme
 kanagawa "A theme inspired by the colors of the famous painting by Katsushika Hokusa"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  (padding 1)
  ;; Define our color palette
  (fujiWhite		"#DCD7BA" "#ffffff")
  (old-white		"#C8C093" "#ffffff")

  (sumiInk		"#13131a" "#13131a")
  (sumiInk-0		"#16161D" "#000000")
  (sumiInk-1b		"#1c1c24" "#000000")
  (sumiInk-1		"#1F1F28" "#080808")
  (sumiInk-2		"#2A2A37" "#121212")
  (sumiInk-3		"#363646" "#303030")
  (sumiInk-4		"#54546D" "#303030")
  (sumiInk-5		"#888899" "#303030")
  (sumiInk-6		"#a0a0ae" "#303030")

  (waveBlue-1		"#223249" "#4e4e4e")
  (waveBlue-2		"#2D4F67" "#585858")
  (waveAqua1		"#6A9589" "#6a9589")
  (waveAqua2		"#7AA89F" "#717C7C")
  
  (samuraiRed		"#E82424" "#585858")

  (winterGreen		"#2B3328" "#585858")
  (winterYellow		"#49443C" "#585858")
  (winterRed		"#43242B" "#585858")
  (winterBlue		"#252535" "#585858")

  (autumnGreen		"#76946A" "#585858")
  (autumnRed		"#C34043" "#585858")
  (autumnYellow		"#DCA561" "#585858")

  (roninYellow		"#FF9E3B" "#585858")

  (dragonBlue		"#658594" "#658594")
  (fujiGray		"#727169" "#717C7C")
  (springViolet1	"#938AA9" "#717C7C")
  (oniViolet		"#957FB8" "#717C7C")
  (crystalBlue		"#7E9CD8" "#717C7C")
  (springViolet2	"#9CABCA" "#717C7C")
  (springBlue		"#7FB4CA" "#717C7C")
  (springGreen		"#98BB6C" "#717C7C")
  (boatYellow1		"#938056" "#717C7C")
  (boatYellow2		"#C0A36E" "#717C7C")
  (carpYellow		"#E6C384" "#717C7C")
  (sakuraPink		"#D27E99" "#717C7C")
  (waveRed		"#E46876" "#717C7C")
  (peachRed		"#FF5D62" "#717C7C")
  (surimiOrange		"#FFA066" "#717C7C")
  (katanaGray		"#717C7C" "#717C7C")
  (comet		"#54536D" "#4e4e4e"))

 ;; Customize faces
 (
  (default                                       (:background sumiInk-1b :foreground fujiWhite))
  (button                                        (:foreground sakuraPink))
  ;; (internal-border                               (:background sumiInk-3))
  (child-frame-border                            (:foreground sumiInk-0))
  (cursor                                        (:background peachRed :foreground sumiInk-0 :bold t))
  (error                                         (:foreground peachRed))
  (glyph-face                                    (:background sakuraPink :foreground peachRed))
  (glyphless-char                                (:background sakuraPink :foreground peachRed))
  (header-line                                   (:background winterBlue))
  (highlight                                     (:background comet :foreground springViolet1))
  (hl-line                                       (:background sumiInk-2))
  (fringe                                        (:inherit 'default))
  ;; (homoglyph                                     (:foreground waveAqua2))
  (line-number                                   (:foreground sumiInk-4))
  (line-number-current-line                      (:background sumiInk-2 :foreground surimiOrange :weight 'semi-bold))
  (lv-separator                                  (:foreground waveBlue-2 :background sumiInk-2))
  (match                                         (:background boatYellow1))
  (menu                                          (:foreground fujiWhite))
  ;; ;; (mode-line                                     (:background sumiInk-0 :foreground fujiWhite (:box (:line-width 1 :color sumiInk-5))))
  (mode-line-inactive                            (:background sumiInk-3 :foreground sumiInk-6))
  (mode-line-active                              (:background winterBlue :foreground crystalBlue))
  (mode-line-highlight                           (:foreground boatYellow2))
  (mode-line-buffer-id                           (:foreground sumiInk-6))
  (mode-line-emphasis                            (:foreground crystalBlue))
  (numbers                                       (:background sakuraPink))
  (region                                        (:background waveBlue-1))
  (separator-line                                (:background sumiInk-0))
  (success                                       (:foreground waveAqua2))
  (vertical-border                               (:foreground sumiInk-2))
  (window-divider                                (:background sumiInk-5 :foreground sumiInk-5))
  (window-divider-first-pixel                    (:background sumiInk-5 :foreground sumiInk-5))
  (window-divider-last-pixel                     (:background sumiInk-5 :foreground sumiInk-5))
  (warning                                       (:foreground carpYellow ))
  ;; (hi-yellow                                     (:background carpYellow :foreground sumiInk-1b))

  ;; Font lock
  (elisp-shorthand-font-lock-face                (:foreground fujiWhite))

  (font-lock-bracket-face                        (:foreground peachRed))
  (font-lock-builtin-face                        (:foreground peachRed))
  (font-lock-comment-delimiter-face              (:foreground comet :italic t))
  (font-lock-comment-face                        (:foreground comet :italic t))
  (font-lock-constant-face                       (:foreground surimiOrange))
  (font-lock-delimiter-face                      (:foreground peachRed))
  (font-lock-doc-face                            (:foreground fujiGray))
  (font-lock-doc-markup-face                     (:foreground fujiGray))
  (font-lock-escape-face                         (:foreground samuraiRed))
  (font-lock-function-call-face                  (:foreground crystalBlue))
  (font-lock-function-name-face                  (:foreground crystalBlue))
  (font-lock-keyword-face                        (:foreground oniViolet :weight 'normal :italic t))
  (font-lock-misc-punctuation-face               (:foreground roninYellow))
  (font-lock-negation-char-face                  (:foreground peachRed))
  (font-lock-number-face                         (:foreground peachRed))
  (font-lock-operator-face                       (:foreground surimiOrange))
  (font-lock-preprocessor-face	                 (:foreground boatYellow2))
  (font-lock-property-name-face	                 (:foreground dragonBlue :weight 'normal :italic t))
  (font-lock-property-use-face	                 (:foreground dragonBlue))
  (font-lock-punctuation-face                    (:foreground surimiOrange :weight 'normal))
  (font-lock-reference-face                      (:foreground peachRed))
  (font-lock-regexp-face                         (:foreground boatYellow2))
  (font-lock-regexp-grouping-backslash           (:foreground roninYellow))
  (font-lock-regexp-grouping-construct           (:foreground surimiOrange))
  (font-lock-string-face                         (:foreground springGreen :italic t))
  (font-lock-type-face                           (:foreground waveAqua2 :weight 'normal))
  (font-lock-variable-name-face                  (:foreground dragonBlue :weight 'light))
  (font-lock-variable-use-face                   (:foreground carpYellow))
  (font-lock-warning-face                        (:foreground roninYellow))

  (info-xref                                     (:foreground peachRed))
  (minibuffer-prompt-end                         (:foreground autumnRed :background winterRed))
  (minibuffer-prompt                             (:foreground peachRed :background winterRed :bold t))
  (epa-mark                                      (:foreground waveRed))
  (dired-mark                                    (:foreground waveRed))
  (trailing-whitespace                           (:background comet))


  ;; Battery colors
  (doom-modeline-battery-critical                (:foreground peachRed))
  (doom-modeline-battery-warning                 (:foreground springGreen))
  (doom-modeline-battery-charging                (:foreground fujiGray))
  (doom-modeline-battery-error                   (:foreground peachRed))
  (doom-modeline-battery-normal                  (:foreground springViolet1))
  (doom-modeline-battery-full                    (:foreground waveAqua2))
  
  ;; Doom visual state
  (doom-modeline-evil-motion-state               (:foreground waveAqua2))
  (doom-modeline-evil-emacs-state                (:foreground crystalBlue))
  (doom-modeline-evil-insert-state               (:foreground peachRed))
  (doom-modeline-evil-normal-state               (:foreground waveAqua2))
  (doom-modeline-evil-visual-state               (:foreground springGreen))
  (doom-modeline-evil-replace-state              (:foreground roninYellow))
  (doom-modeline-evil-operator-state             (:foreground crystalBlue))

  (doom-modeline-project-dir                     (:bold t :foreground waveAqua2))
  (doom-modeline-buffer-path                     (:inherit 'bold :foreground waveAqua2))
  (doom-modeline-buffer-file                     (:inherit 'bold :foreground oniViolet))
  (doom-modeline-buffer-modified                 (:inherit 'bold :foreground carpYellow))
  (doom-modeline-error                           (:background peachRed))
  (doom-modeline-buffer-major-mode               (:foreground waveAqua2 :bold t))
  (doom-modeline-info                            (:bold t :foreground waveAqua2))
  (doom-modeline-project-dir                     (:bold t :foreground surimiOrange))
  (doom-modeline-bar                             (:bold t :background springViolet1))
  (doom-modeline-panel                           (:inherit 'bold :background boatYellow2 :foreground sumiInk-2))
  (doom-themes-visual-bell                       (:background autumnRed))

  ;; elfeed
  (elfeed-search-feed-face                       (:foreground springViolet1))
  (elfeed-search-tag-face                        (:foreground waveAqua2))

  ;; message colors
  (message-header-name                           (:foreground sumiInk-4))
  (message-header-other                          (:foreground surimiOrange))
  (message-header-subject                        (:foreground carpYellow))
  (message-header-to                             (:foreground old-white))
  (message-header-cc                             (:foreground waveAqua2))
  (message-header-xheader                        (:foreground old-white))
  (custom-link                                   (:foreground crystalBlue))
  (link                                          (:foreground crystalBlue))

  (winum-face (:foreground samuraiRed :bold t))
  
  ;; org-mode
  (org-done                                      (:foreground dragonBlue))
  (org-drawer                                    (:foreground springBlue :background winterBlue :height 0.8 :weight 'normal))
  (org-special-keyword                           (:background winterRed :foreground peachRed :height 0.8))
  (org-code                                      (:background sumiInk-0))
  (org-meta-line                                 (:background winterGreen :foreground springGreen))
  (org-block                                     (:background sumiInk-0))
  (org-block-begin-line                          (:background winterBlue :foreground dragonBlue))
  (org-block-end-line	                         (:background winterBlue :foreground dragonBlue))
  (org-headline-done                             (:foreground dragonBlue :strike-through t))
  (org-todo                                      (:foreground surimiOrange :bold t))
  (org-headline-todo                             (:foreground sumiInk-2))
  (org-upcoming-deadline                         (:foreground peachRed))
  (org-footnote                                  (:foreground waveAqua2))
  (org-date                                      (:foreground waveBlue-2))
  (org-ellipsis                                  (:foreground waveBlue-2 :bold t))
  (org-level-1                                   (:foreground peachRed))
  (org-level-2                                   (:foreground springViolet2))
  (org-level-3                                   (:foreground boatYellow2))
  (org-level-4                                   (:foreground fujiWhite))
  (org-level-5                                   (:foreground fujiWhite))
  (org-level-6                                   (:foreground carpYellow))
  (org-level-7                                   (:foreground surimiOrange))
  (org-level-8                                   (:foreground springGreen))

  (org-modern-statistics                         (:foreground crystalBlue :background winterBlue :height 0.8 :weight 'normal))
  (org-modern-tag                                (:foreground sumiInk-4 :background winterBlue :height 0.8 :weight 'semi-bold))

  ;; which-key
  (which-key-key-face                            (:inherit 'font-lock-constant-face))
  (which-func                                    (:inherit 'font-lock-property-name-face :bold t))
  (which-key-group-description-face              (:foreground waveRed))
  (which-key-command-description-face            (:foreground crystalBlue))
  (which-key-local-map-description-face          (:foreground carpYellow))

  ;; swiper
  (swiper-line-face                              (:foreground carpYellow))
  (swiper-background-match-face-1                (:background surimiOrange :foreground sumiInk-0))
  (swiper-background-match-face-2                (:background crystalBlue :foreground sumiInk-0))
  (swiper-background-match-face-3                (:background boatYellow2 :foreground sumiInk-0))
  (swiper-background-match-face-4                (:background peachRed :foreground sumiInk-0))
  (swiper-match-face-1                           (:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2                           (:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3                           (:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4                           (:inherit 'swiper-background-match-face-4))

  (counsel-outline-default                       (:foreground carpYellow))
  (info-header-xref                              (:foreground carpYellow))
  (xref-file-header                              (:foreground carpYellow))
  (xref-match                                    (:foreground carpYellow))

  ;; rainbow delimiters
  (rainbow-delimiters-mismatched-face            (:foreground peachRed))
  (rainbow-delimiters-unmatched-face             (:foreground waveAqua2))
  (rainbow-delimiters-base-error-face            (:foreground peachRed))
  (rainbow-delimiters-base-face                  (:foreground carpYellow))

  (rainbow-delimiters-depth-1-face               (:foreground oniViolet))
  (rainbow-delimiters-depth-2-face               (:foreground roninYellow))
  (rainbow-delimiters-depth-3-face               (:foreground crystalBlue))
  (rainbow-delimiters-depth-4-face               (:foreground sakuraPink))
  (rainbow-delimiters-depth-5-face               (:foreground carpYellow))
  (rainbow-delimiters-depth-6-face               (:foreground peachRed))
  (rainbow-delimiters-depth-7-face               (:foreground waveRed))
  (rainbow-delimiters-depth-8-face               (:foreground waveAqua2))
  (rainbow-delimiters-depth-9-face               (:foreground springViolet2))

  ;; show-paren
  (show-paren-match                              (:background waveAqua1 :foreground sumiInk-0 :bold t))
  (show-paren-match-expression	                 (:background waveAqua1 :foreground sumiInk-0 :bold t))
  (show-paren-mismatch                           (:background peachRed :foreground old-white))

  (tooltip                                       (:foreground sumiInk :background carpYellow))
  ;; company-box
  (company-tooltip                               (:background sumiInk-2))
  (company-tooltip-common                        (:foreground autumnYellow))
  (company-tooltip-quick-access                  (:foreground springViolet2))
  (company-tooltip-scrollbar-thumb               (:background autumnRed))
  (company-tooltip-scrollbar-track               (:background sumiInk-2))
  (company-tooltip-search                        (:background carpYellow :foreground sumiInk-0 :distant-foreground fujiWhite))
  (company-tooltip-selection                     (:background peachRed :foreground winterRed :bold t))
  (company-tooltip-mouse                         (:background sumiInk-2 :foreground sumiInk-0 :distant-foreground fujiWhite))
  (company-tooltip-annotation                    (:foreground peachRed :distant-foreground sumiInk-1))
  (company-scrollbar-bg                          (:inherit 'tooltip))
  (company-scrollbar-fg                          (:background peachRed))
  (company-preview                               (:foreground carpYellow))
  (company-preview-common                        (:foreground peachRed :bold t))
  (company-preview-search                        (:inherit 'company-tooltip-search))
  (company-template-field                        (:inherit 'match))

  (consult-file (:foreground springViolet2))

  ;; (flycheck-error-list-error (:box (:color winterRed :line-width 2) :foreground peachRed :background winterRed :height 140 :weight 'bold))
  ;; (flycheck-error-list-warning (:box (:color winterYellow :line-width 2) :foreground carpYellow :background winterYellow :height 140 :weight 'bold))
  ;; (flycheck-error-list-info (:box (:color winterBlue :line-width 2) :foreground crystalBlue :background winterBlue :height 140 :weight 'bold))

  ;; (flycheck-error                     (:box (:color winterRed :line-width 2) :foreground peachRed :background winterRed :height 140 :weight 'bold))
  ;; (flycheck-warning                   (:box (:color winterYellow :line-width 2) :foreground carpYellow :background winterYellow :height 140 :weight 'bold))
  ;; (flycheck-info                      (:box (:color winterBlue :line-width 2) :foreground crystalBlue :background winterBlue :height 140 :weight 'bold))

  (flycheck-inline-error                         (:foreground peachRed :background winterRed :height 150 :italic t))
  (flycheck-inline-info                          (:foreground crystalBlue :background waveBlue-2 :height 150 :italic t))
  (flycheck-inline-warning                       (:foreground carpYellow :background winterYellow :height 150 :italic t))

  ;; indent dots
  (highlight-indent-guides-character-face        (:foreground sumiInk-3))
  (highlight-indent-guides-stack-character-face  (:foreground sumiInk-3))
  (highlight-indent-guides-stack-odd-face        (:foreground sumiInk-3))
  (highlight-indent-guides-stack-even-face       (:foreground comet))
  (highlight-indent-guides-stack-character-face  (:foreground sumiInk-3))
  (highlight-indent-guides-even-face             (:foreground sumiInk-2))
  (highlight-indent-guides-odd-face              (:foreground comet))

  (highlight-indentation-current-column-face     (:background sumiInk-2))
  (highlight-indentation-face                    (:foreground comet :background comet))

  (highlight-operators-face                      (:foreground boatYellow2))
  (highlight-quoted-symbol                       (:foreground springGreen))
  (highlight-numbers-face                        (:foreground sakuraPink))
  (highlight-symbol-face                         (:background winterGreen))

  ;; ivy
  (ivy-current-match                             (:background crystalBlue :foreground sumiInk-0 :bold t))
  (ivy-action                                    (:foreground fujiWhite))
  (ivy-grep-line-number                          (:foreground springGreen))
  (ivy-minibuffer-match-face-1                   (:foreground waveRed))
  (ivy-minibuffer-match-face-2                   (:foreground springGreen))
  (ivy-minibuffer-match-highlight                (:foreground waveAqua2))
  (ivy-grep-info                                 (:foreground waveAqua2))
  (ivy-grep-line-number                          (:foreground springViolet2))
  (ivy-confirm-face                              (:foreground waveAqua2))

  ;; posframe's
  (ivy-posframe                                  (:background sumiInk-2))
  (ivy-posframe-border                           (:background sumiInk-3))

  ;; treemacs
  (treemacs-file-face                            (:foreground sumiInk-4))
  (treemacs-directory-collapsed-face             (:inherit 'treemacs-directory-face))
  (treemacs-window-background-face               (:background sumiInk-0))
  (treemacs-directory-face                       (:inherit 'treemacs-file-face))
  (treemacs-nerd-icons-file-face                 (:inherit 'treemacs-file-face))
  (treemacs-nerd-icons-root-face                 (:inherit 'treemacs-file-face))
  (treemacs-tags-face                            (:foreground waveRed :height 0.8))

  (treemacs-git-renamed-face                     (:foreground dragonBlue :baground winterGreen))
  (treemacs-git-ignored-face                     (:foreground sumiInk-4))
  (treemacs-git-unmodified-face                  (:foreground sumiInk-6))
  (treemacs-git-untracked-face                   (:foreground springGreen))
  (treemacs-git-modified-face                    (:foreground springBlue))

  (lsp-headerline-breadcrumb-path-face           (:background sumiInk-0))

  (lsp-ui-doc-background                         (:background sumiInk-0 :foreground peachRed))
  (lsp-ui-doc-header                             (:background sumiInk-0 :foreground peachRed))
  (lsp-ui-doc-border                             (:foreground nil))
  (lsp-ui-peek-filename                          (:foreground waveAqua2))
  (lsp-ui-sideline-code-action                   (:foreground carpYellow))
  (lsp-ui-sideline-current-symbol                (:foreground springBlue))
  (lsp-ui-sideline-symbol                        (:foreground dragonBlue))

  (eldoc-highlight-function-argument (:foreground carpYellow :background winterYellow))

  ;; dashboard
  (dashboard-heading                             (:foreground springViolet2 :bold t))
  (dashboard-items-face                          (:foreground fujiWhite))
  (dashboard-banner-logo-title                   (:bold t :height 200))
  (dashboard-no-items-face                       (:foreground sumiInk-4))

  ;; evil
  (evil-ex-lazy-highlight                        (:foreground winterRed :background sakuraPink :bold t))
  (evil-ex-substitute-matches                    (:foreground winterRed :background autumnRed :strike-through t))
  (evil-ex-substitute-replacement                (:foreground winterBlue :background crystalBlue :bold))
  (evil-search-highlight-persist-highlight-face  (:background carpYellow))

  ;; term
  (term                                          (:background sumiInk-0 :foreground fujiWhite))
  (term-color-blue                               (:background dragonBlue :foreground dragonBlue))
  (term-color-bright-blue                        (:inherit 'term-color-blue))
  (term-color-green                              (:background waveAqua2 :foreground waveAqua2))
  (term-color-bright-green                       (:inherit 'term-color-green))
  (term-color-black                              (:background sumiInk-0 :foreground fujiWhite))
  (term-color-bright-black                       (:background sumiInk-1b :foreground sumiInk-1b))
  (term-color-white                              (:background fujiWhite :foreground fujiWhite))
  (term-color-bright-white                       (:background old-white :foreground old-white))
  (term-color-red                                (:background peachRed :foreground peachRed))
  (term-color-bright-red                         (:background springGreen :foreground springGreen))
  (term-color-yellow                             (:background roninYellow :foreground autumnRed))
  (term-color-bright-yellow                      (:background carpYellow :foreground carpYellow))
  (term-color-cyan                               (:background springBlue :foreground springBlue))
  (term-color-bright-cyan                        (:background springBlue :foreground springBlue))
  (term-color-magenta                            (:background springViolet2 :foreground springViolet2))
  (term-color-bright-magenta                     (:background springViolet2 :foreground springViolet2))

  ;; popup
  (popup-face                                    (:inherit 'tooltip))
  (popup-selection-face                          (:inherit 'tooltip))
  (popup-tip-face                                (:inherit 'tooltip))

  ;; anzu
  (anzu-match-1                                  (:foreground waveAqua2 :background sumiInk-2))
  (anzu-match-2                                  (:foreground carpYellow :background sumiInk-2))
  (anzu-match-3                                  (:foreground waveAqua2 :background sumiInk-2))

  (anzu-mode-line                                (:foreground sumiInk-0 :background springViolet2))
  (anzu-mode-no-match	                         (:foreground fujiWhite :background peachRed))
  (anzu-replace-to                               (:foreground springBlue :background winterBlue))
  (anzu-replace-highlight                        (:foreground peachRed :background winterRed :strike-through t))

  ;; ace
  (ace-jump-face-background                      (:foreground waveBlue-2))
  (ace-jump-face-foreground                      (:foreground peachRed :background sumiInk-0 :bold t))
  
  ;; vertico
  (vertico-multiline                             (:background winterBlue :foreground waveAqua2))
  (vertico-group-title                           (:foreground sumiInk-5 :bold t))
  (vertico-group-separator                       (:foreground sumiInk-5 :strike-through t))
  (vertico-current                               (:foreground springBlue :distant-foreground fujiGray :background winterBlue :weight 'normal))

  (vertico-posframe-border                       (:background sumiInk))
  (vertico-posframe                              (:background sumiInk))

  (eldoc-box-body                                (:background winterBlue :foreground crystalBlue))
  (eldoc-box-border                              (:background sumiInk-4))

  (orderless-match-face-0                        (:foreground peachRed :weight 'bold))
  (orderless-match-face-1                        (:foreground springBlue :weight 'bold))
  (orderless-match-face-2                        (:foreground springGreen :weight 'bold))
  (orderless-match-face-3                        (:foreground carpYellow :weight 'bold))

  (comint-highlight-prompt                       (:foreground crystalBlue :background winterBlue :italic t))
  (comint-highlight-input                        (:foreground peachRed :weight 'semi-bold))

  (dape-stack-trace (:background winterRed))

  (completions-annotations                       (:foreground dragonBlue :italic t))

  (corfu-current                                 (:inherit 'vertico-current))
  (corfu-annotations                             (:foreground springGreen))
  (corfu-default                                 (:background waveBlue-1 :foreground springViolet2))
  (corfu-border                                  (:background dragonBlue))
  (corfu-popupinfo                               (:background sumiInk :foreground springBlue :box (:line-width 2 :color sumiInk)))

  ;; hydra
  (hydra-face-amaranth                           (:foreground autumnRed))
  (hydra-face-blue                               (:foreground springBlue))
  (hydra-face-pink                               (:foreground sakuraPink))
  (hydra-face-red                                (:foreground peachRed))
  (hydra-face-teal                               (:foreground waveAqua2))

  ;; centaur-tabs
  (centaur-tabs-active-bar-face                  (:background springBlue :foreground fujiWhite))
  (centaur-tabs-selected                         (:background sumiInk-1b :foreground fujiWhite :bold t))
  (centaur-tabs-selected-modified                (:background sumiInk-1b :foreground fujiWhite))
  (centaur-tabs-modified-marker-selected         (:background sumiInk-1b :foreground autumnYellow))
  (centaur-tabs-close-selected                   (:inherit 'centaur-tabs-selected))
  (tab-line                                      (:background sumiInk-0))

  (centaur-tabs-unselected                       (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-default                          (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-unselected-modified              (:background sumiInk-0 :foreground peachRed))
  (centaur-tabs-modified-marker-unselected       (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-close-unselected                 (:background sumiInk-0 :foreground sumiInk-4))

  (centaur-tabs-close-mouse-face                 (:background nil :foreground peachRed))
  (centaur-tabs-default                          (:background roninYellow ))
  (centaur-tabs-name-mouse-face                  (:foreground springBlue :bold t))

  (git-gutter:added                              (:foreground autumnGreen))
  (git-gutter:deleted                            (:foreground waveRed))
  (git-gutter:modified                           (:foreground springBlue))

  (marginalia-documentation                      (:foreground dragonBlue :italic t))

  (diff-hl-margin-change                         (:foreground springBlue :background winterBlue))
  (diff-hl-margin-delete                         (:foreground peachRed :background winterRed))
  (diff-hl-margin-insert                         (:foreground comet :background winterBlue))

  (smerge-base		                         (:background sumiInk-1))
  (smerge-markers				 (:background sumiInk-3))
  (smerge-upper					 (:background winterRed))
  (smerge-lower					 (:background winterGreen))
  (smerge-refined-change                         (:background winterYellow))
  (smerge-refined-removed			 (:background waveRed :foreground sumiInk :strike-through t))
  (smerge-refined-added 			 (:background waveAqua1 :foreground winterGreen))

  (bm-fringe-face                                (:background peachRed :foreground sumiInk-3))
  (bm-fringe-persistent-face                     (:background peachRed :foreground sumiInk-3))

  (ansi-color-green                              (:foreground springGreen))
  (ansi-color-black                              (:background sumiInk-0))
  (ansi-color-cyan                               (:foreground waveAqua2))
  (ansi-color-magenta                            (:foreground sakuraPink))
  (ansi-color-blue                               (:foreground crystalBlue))
  (ansi-color-red                                (:foreground peachRed))
  (ansi-color-white                              (:foreground fujiWhite))
  (ansi-color-yellow                             (:foreground autumnYellow))
  (ansi-color-bright-white                       (:foreground old-white))
  (ansi-color-bright-white                       (:foreground old-white))

 ;; Tree sitter highlightning
  (tree-sitter-hl-face:annotation                (:foreground springBlue :background winterBlue :weight 'semi-bold))
  (tree-sitter-hl-face:annotation.builtin        (:foreground crystalBlue :backgroud winterBlue :weight 'semi-bold))
  (tree-sitter-hl-face:annotation.type           (:foreground springGreen :background winterGreen :weight 'semi-bold))

  (tree-sitter-hl-face:function                  (:inherit 'font-lock-function-name-face))
  (tree-sitter-hl-face:function.call             (:inherit 'font-lock-function-call-face))
  (tree-sitter-hl-face:function.builtin          (:foreground peachRed :italic t))
  (tree-sitter-hl-face:function.special          (:foreground springGreen :italic t))
  (tree-sitter-hl-face:function.macro            (:foreground waveAqua2))
  (tree-sitter-hl-face:function.label            (:foreground autumnYellow))

  (tree-sitter-hl-face:method                    (:inherit 'font-lock-function-name-face))
  (tree-sitter-hl-face:method.call               (:inherit 'font-lock-function-call-face))

  (tree-sitter-hl-face:type                      (:inherit 'font-lock-type-face))
  (tree-sitter-hl-face:type.parameter            (:foreground peachRed :italic t))
  (tree-sitter-hl-face:type.argument             (:foreground sumiInk-4))
  (tree-sitter-hl-face:type.builtin              (:inherit 'font-lock-builtin-face))
  (tree-sitter-hl-face:type.super                (:foreground sakuraPink))
  (tree-sitter-hl-face:constructor               (:foreground waveAqua1 :weight 'normal))

  (tree-sitter-hl-face:variable                  (:inherit 'font-lock-variable-name-face))
  (tree-sitter-hl-face:variable.parameter        (:inherit 'tree-sitter-hl-face:type.parameter))
  (tree-sitter-hl-face:variable.builtin          (:foreground springBlue :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground oniViolet :italic t))
  (tree-sitter-hl-face:variable.synthesized      (:foreground waveRed))

  (tree-sitter-hl-face:property                  (:inherit 'font-lock-property-use-face))
  (tree-sitter-hl-face:property.definition       (:inherit 'font-lock-property-name-face))

  (tree-sitter-hl-face:comment                   (:inherit 'font-lock-comment-face))
  (tree-sitter-hl-face:doc                       (:inherit 'font-lock-comment-face))
  (tree-sitter-hl-face:string                    (:inherit 'font-lock-string-face))
  (tree-sitter-hl-face:string.special            (:inherit 'font-lock-string-face))
  (tree-sitter-hl-face:escape                    (:inherit 'font-lock-regexp-grouping-backslash))
  (tree-sitter-hl-face:embedded                  (:foreground carpYellow))

  (tree-sitter-hl-face:keyword                   (:inherit 'font-lock-keyword-face))
  (tree-sitter-hl-face:keyword.compiler          (:foreground waveRed :background winterRed :weight 'bold))
  (tree-sitter-hl-face:keyword.type              (:foreground sakuraPink))
  (tree-sitter-hl-face:operator                  (:inherit 'font-lock-operator-face))
  (tree-sitter-hl-face:label                     (:foreground sumiInk-4))
  (tree-sitter-hl-face:constant                  (:inherit 'font-lock-constant-face))
  (tree-sitter-hl-face:constant.builtin          (:inherit 'font-lock-constant-face :weight 'normal))
  (tree-sitter-hl-face:number                    (:inherit 'font-lock-number-face))

  (tree-sitter-hl-face:punctuation               (:inherit 'font-lock-punctuation-face))
  (tree-sitter-hl-face:punctuation.bracket       (:inherit 'font-lock-bracket-face))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground peachRed))
  (tree-sitter-hl-face:punctuation.special       (:foreground surimiOrange))

  (tree-sitter-hl-face:case-pattern              (:foreground autumnYellow))

  (swift-ts-face-annotation                      (:inherit 'tree-sitter-hl-face:annotation))
  (swift-ts-face-annotation.builtin              (:inherit 'tree-sitter-hl-face:annotation.builtin))
  (swift-ts-face-annotation.type                 (:inherit 'tree-sitter-hl-face:annotation.type))

  (swift-ts-face-punctuation.type                (:inherit 'font-lock-punctuation-face))
  (swift-ts-face-compiler                        (:inherit 'tree-sitter-hl-face:keyword.compiler))
  ;; (swift-ts-face-constructor.call                (:inherit 'tree-sitter-hl-face:constructor))

  (swift-ts-face-face-label                      (:inherit 'tree-sitter-hl-face:label))
  (swift-ts-face-method.call                     (:inherit 'font-lock-function-call-face))
  (swift-ts-face-method.name                     (:inherit 'font-lock-function-name-face))
  (swift-ts-face-keyword.annotation              (:foreground waveRed :background winterRed :weight 'bold))
  ;; (swift-ts-face-keyword.type                    (:inherit 'tree-sitter-hl-face:keyword.type))
  (swift-ts-face-variable.synthesized            (:inherit 'tree-sitter-hl-face:variable.synthesized))

  (focus-unfocused (:foreground sumiInk-4))
  (window-stool-face (:background sumiInk-2)) ; :underline (:color sumiInk-3)))

  (minimap-active-region-background (:background sumiInk-3))

  ;; (magit-filename (:foreground crystalBlue))
  (magit-diff-file-heading (:foreground springBlue :weight 'normal))

  (copilot-overlay-face (:background sumiInk-3 :foreground springViolet2))

  (transient-key (:foreground waveRed :bold t))
  (transient-key-stay (:foreground springBlue :backgroud winterBlue :bold t))
  (transient-key-exit (:foreground peachRed :background winterRed :bold t))

  (periphery-fix-face-full (:foreground winterBlue :background springBlue :bold t))
  (periphery-note-face-full (:foreground winterGreen :background springGreen :bold t))
  (periphery-mark-face-full (:foreground sumiInk-0 :background sumiInk-6 :bold t))
  (periphery-todo-face-full (:foreground winterBlue :background springBlue :bold t))
  (periphery-hack-face-full (:foreground winterRed :background peachRed :bold t))
  (periphery-performance-face-full (:foreground winterRed :background sakuraPink :bold t))
  (periphery-warning-face-full (:foreground winterYellow :background boatYellow2 :bold t))

  (markdown-header-delimiter-face (:foreground sumiInk-4))
  (markdown-list-face (:foreground carpYellow :bold t))
  (markdown-header-face-1 (:height 1.2 :foreground waveRed :background winterRed :weight 'extra-bold))
  (markdown-header-face-2 (:height 1.15 :foreground springBlue :weight 'bold))
  (markdown-header-face-3 (:height 1.1 :foreground springGreen :weight 'bold))
  (markdown-header-face-4 (:height 1.05 :foreground waveBlue-2 :weight 'bold))
  (markdown-markup-face (:foreground sumiInk-4))
  (markdown-inline-code-face (:foreground springViolet2 :background winterBlue :weight 'normal :italic t))
  (markdown-code-face (:foreground springBlue :weight 'normal))
  (markdown-pre-face (:foreground old-white :weight 'thin))

  (punch-line-project-face        (:foreground dragonBlue :weight 'bold))
  (punch-line-buffer-name-face    (:foreground sumiInk-6 :weight 'bold))
  (punch-line-time-face           (:foreground sumiInk-5))
  (punch-line-major-mode-face     (:foreground sumiInk-5))

  (eglot-inlay-hint-face (:foreground sumiInk-4 :height 0.8 :weight 'normal))
  ;; (eglot-parameter-hint-face (:foreground springViolet2 :height 0.8))
  ;; (eglot-type-hint-face (:foreground sumiInk-5 :height 0.8))

  (wgrep-done-face (:foreground sumiInk-6))

  (android-emulator-log-error-face (:foreground samuraiRed :background winterRed))
  (android-emulator-log-warning-face (:foreground roninYellow :background winterYellow))
  (android-emulator-log-info-face (:foreground springGreen :background winterGreen))
  (android-emulator-log-debug-face (:foreground springBlue :background winterBlue))
  (android-emulator-log-verbose-face (:foreground comet))

  (solaire-default-face (:background sumiInk-0))

  ))

(provide-theme 'kanagawa)
;;; kanagawa-theme.el ends here
