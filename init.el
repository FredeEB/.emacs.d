;; set garbage collection threshold high for initialization
(setq warning-suppress-types '((comp))
	  gc-cons-threshold (* 100 1000 1000))

(defvar bootstrap-version)
(let ((bootstrap-file
	   (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
	  (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
	(with-current-buffer
		(url-retrieve-synchronously
		 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
		 'silent 'inhibit-cookies)
	  (goto-char (point-max))
	  (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq straight-use-package-by-default t)

(straight-use-package 'use-package)

(use-package org)
(use-package org-plus-contrib)

;; load remaining config
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
