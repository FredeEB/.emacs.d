;;; package -- Org-latex ease of use things
;;;
;;; Commentary:
;;; Does org style insertion of LaTeX headers, provided that one's added
;;; manually to "define" the location of LaTeX headers.
;;;
;;; Code:


(defun C-include-header (headers)
  "Add a C/C++ local or global HEADERS to the current file."
  (interactive
   (list (split-string (read-string "sHeader(s): "))))
  (save-excursion
    (if (not (search-backward "#include " nil t))
	(goto-char 0))
    (forward-line)
    (dolist (header headers)
      (insert (concat "#include <" headers ">\n")))))

;;; C-enhancer.el ends here
