;; set garbage collection threshold high for initialization
(setq gc-cons-threshold (* 100 1000 1000))
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(setq gc-cons-threshold (* 2 1000 1000))
