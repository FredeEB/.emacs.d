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

(unless (package-installed-p 'yasnippet-snippets)
  (package-refresh-contents)
  (package-install 'yasnippet-snippets))

(unless (package-installed-p 'evil-leader)
  (package-refresh-contents)
  (package-install 'evil-leader))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ecb-options-version "2.50")
 '(frame-background-mode (quote dark))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(linum-relative-current-symbol "")
 '(lsp-ui-peek-always-show t)
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
    (## plantuml-mode auctex emmet-mode web-mode spotify textile-mode matlab-mode dumb-jump projectile evil-surround org-bullets solarized-theme lua-mode ecb ecb-autoloads minted lsp-ui org-ref org-latex evil-goggles evil-goggles-mode evil-magit jedi company-jedi company-irony-c-headers cmake-project cmake-ide irony-eldoc company-irony company rainbow-delimiters aggressive-indent agressive-indent yasnippet-snippets exwm spaceline hungry-delete dmenu rainbow-mode avy smex beacon markdown-mode polymode which-key use-package)))
 '(plantuml-jar-path "/usr/bin/plantuml")
 '(python-shell-completion-native-disabled-interpreters (quote ("python" "pypy" "ipython")))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com" t)
 '(smtpmail-smtp-service 587 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code Retina" :foundry "outline" :slant normal :weight normal :height 141 :width normal)))))
