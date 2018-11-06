
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

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
    ("73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd")))
 '(ecb-options-version "2.50")
 '(evil-collection-company-use-tng nil)
 '(evil-want-integration t)
 '(evil-want-keybinding nil)
 '(fci-rule-color "#3C3D37")
 '(flycheck-clang-analyzer-executeable "clang-6.0" t)
 '(flycheck-global-modes (quote (not org-mode)))
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
 '(linum-relative-backend (quote display-line-numbers-mode))
 '(linum-relative-current-symbol "")
 '(lsp-ui-peek-always-show t)
 '(magit-diff-use-overlays nil)
 '(matlab-indent-function t t)
 '(matlab-shell-command "matlab" t)
 '(openwith-associations (quote (("\\.pdf\\'" "zathura" (file)))))
 '(org-agenda-files nil)
 '(org-babel-load-languages
   (quote
    ((python . t)
     (C . T)
     (sh . t)
     (makefile . t)
     (matlab . t)
     (emacs-lisp . t)
     (plantuml . t))))
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
 '(powerline-default-theme nil t)
 '(python-shell-completion-native-disabled-interpreters (quote ("python" "pypy" "ipython")))
 '(rtags-autostart-diagnostics t)
 '(rtags-completions-enabled t)
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
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
