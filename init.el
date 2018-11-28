
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
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 2)
 '(company-show-numbers t)
 '(custom-safe-themes
   (quote
    ("100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" default)))
 '(doom-modeline-buffer-file-name-style (quote truncate-with-project) t)
 '(evil-collection-company-use-tng nil)
 '(evil-want-integration t)
 '(evil-want-keybinding nil)
 '(flycheck-clangcheck-analyze t)
 '(flycheck-global-modes (quote (not org-mode)))
 '(fzf/executable "~/.zplug/repos/junegunn/fzf/bin/fzf")
 '(linum-relative-current-symbol "")
 '(lsp-ui-peek-always-show t t)
 '(openwith-associations (quote (("\\.pdf\\'" "zathura" (file)))))
 '(org-agenda-files (quote ("~/Documents/uni/3.semester/school.org")))
 '(org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar" t)
 '(package-selected-packages
   (quote
    (company-lsp helm-ag doom-modeline bifocal frames-only-mode doom-themes org-tree-slide pandoc-mode pandoc helm-company neotree evil-collection yasnippet-snippets which-key web-mode use-package textile-mode swiper sudo-edit ssh-agency rainbow-mode rainbow-delimiters org-ref org-bullets openwith monokai-theme matlab-mode lua-mode lsp-ui linum-relative jedi ido-vertical-mode hungry-delete helm-rtags helm-make golden-ratio go-mode github-clone fzf focus flycheck-rtags flycheck-plantuml flycheck-clojure flycheck-clangcheck floobits evil-surround evil-paredit evil-mc evil-magit evil-leader evil-goggles emmet-mode dts-mode diff-hl company-rtags company-jedi company-irony-c-headers company-irony cmake-ide cedit better-shell beacon avy auto-yasnippet auctex airline-themes aggressive-indent)))
 '(plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
 '(powerline-default-theme nil t)
 '(rtags-autostart-diagnostics t)
 '(rtags-completions-enabled t)
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
