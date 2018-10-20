;;; package -- Org-latex ease of use things
;;;
;;; Commentary:
;;; Does org style insertion of LaTeX headers, provided that one's added
;;; manually to "define" the location of LaTeX headers.
;;;
;;; Code:


(defun org-latex-include-header (packages)
  "Add a latex header with PACKAGES to the current document."
  (interactive
   (list (split-string (read-string "Package(s): "))))
  (save-excursion
    (if (not (search-backward "#+LATEX_HEADER: \\usepackage" nil t))
	(if (not (search-backward "#+AUTHOR:" nil t))
	    (goto-char 0)))
    (forward-line)
    (dolist (package packages)
      (insert (concat "#+LATEX_HEADER: \\usepackage{" package "}\n")))))

(defun org-latex-insert-meta (title author)
  "Insert TITLE and AUTHOR headers for latex."
  (interactive "sTitle: \nsAuthor: ")
  (save-excursion
    (goto-char (point-min))
    (insert "#+TITLE: " title "\n#+AUTHOR: " author "\n\n")))
;;; org-latex-enhancer.el ends here
