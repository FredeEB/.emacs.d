
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 3)
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "66aea5b7326cf4117d63c6694822deeca10a03b98135aaaddb40af99430ea237" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "af717ca36fe8b44909c984669ee0de8dd8c43df656be67a50a1cf89ee41bde9a" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" default)))
 '(ecb-options-version "2.50")
 '(evil-collection-company-use-tng nil)
 '(fci-rule-color "#3C3D37")
 '(flycheck-clang-analyzer-executeable "clang-6.0" t)
 '(frame-background-mode (quote dark))
 '(fzf/executable "~/.zplug/repos/junegunn/fzf-bin/fzf-bin")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(linum-relative-current-symbol "")
 '(lsp-ui-peek-always-show t)
 '(magit-diff-use-overlays nil)
 '(org-agenda-files nil)
 '(org-babel-load-languages
   (quote
    ((python . t)
     (C . T)
     (sh . t)
     (makefile . t)
     (matlab . t)
     (emacs-lisp . t))))
 '(org-bullets-face-name (quote Fira\ Code\ Retina))
 '(org-capture-templates
   (quote
    (("j" "Journal" entry
      (file+olp+datetree "~/org/Journal.org" "Entries")
      "* %?
Entered on %U
 %i
 %a"))) t)
 '(package-selected-packages
   (quote
    (lsp-clangd evil-mc sesman cider clojure-mode ace-window treemacs fancy-battery ## plantuml-mode auctex emmet-mode web-mode spotify textile-mode matlab-mode dumb-jump projectile evil-surround org-bullets solarized-theme lua-mode ecb ecb-autoloads minted lsp-ui org-ref org-latex evil-goggles evil-goggles-mode evil-magit jedi company-jedi company-irony-c-headers cmake-project cmake-ide irony-eldoc company-irony company rainbow-delimiters aggressive-indent agressive-indent yasnippet-snippets exwm spaceline hungry-delete dmenu rainbow-mode avy smex beacon markdown-mode polymode which-key use-package)))
 '(plantuml-jar-path "/usr/bin/plantuml")
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(python-shell-completion-native-disabled-interpreters (quote ("python" "pypy" "ipython")))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com" t)
 '(smtpmail-smtp-service 587 t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code Retina" :foundry "outline" :slant normal :weight normal :height 141 :width normal))))
 '(company-scrollbar-bg ((t (:background "#3d3d3d"))))
 '(company-scrollbar-fg ((t (:background "#303030"))))
 '(company-tooltip ((t (:inherit default :background "#292929"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(helm-buffer-directory ((t (:foreground "DarkRed"))))
 '(minibuffer-prompt ((t (:background "#e6db74" :foreground "#222" :box nil)))))
