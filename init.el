(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq auto-save-default nil)
(setq make-backup-file nil)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'yasnippet-snippets)
  (package-refresh-contents)
  (package-install 'yasnippet-snippets))

(unless (package-installed-p 'evil-leader)
  (package-refresh-contents)
  (package-install 'evil-leader))

(unless (package-installed-p 'auto-complete-c-headers)
  (package-refresh-contents)
  (package-install 'auto-complete-c-headers))

(unless (package-installed-p 'markdown-mode)
  (package-refresh-contents)
  (package-install 'markdown-mode))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(frame-background-mode (quote dark))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
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
    (jedi company-jedi company-irony-c-headers cmake-project cmake-ide irony-eldoc company-irony company rainbow-delimiters aggressive-indent agressive-indent yasnippet-snippets exwm spaceline hungry-delete dmenu rainbow-mode avy smex beacon markdown-mode polymode which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code Retina" :foundry "outline" :slant normal :weight normal :height 141 :width normal)))))
