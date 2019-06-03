(when (not (file-exists-p (expand-file-name "~/.emacs.d/config.el")))
  (require 'org)
  (org-babel-tangle-file (expand-file-name "~/.emacs.d/config.org") (expand-file-name "~/.emacs.d/config.el")))
(load-file (expand-file-name "~/.emacs.d/config.el"))
