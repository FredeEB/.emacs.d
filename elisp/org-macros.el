;;; package -- Org-latex ease of use things
;;;
;;; Commentary:
;;; Adds a number of macros to manipulate org-files
;;;
;;; Code:

(require 'json)
(require 'url)

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

(defun org-reveal-add-root ()
  "Insert Reveal root tag for org-re-reveal exports"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (insert
     (format "#+REVEAL_ROOT: https://cdnjs.cloudflare.com/ajax/libs/reveal.js/%s/\n"
	     (cdr
	      (assoc 'version
		     (with-current-buffer
			 (url-retrieve-synchronously "https://api.cdnjs.com/libraries/reveal.js")
		       (goto-char (+ url-http-end-of-headers 1))
		       (json-read-object))))))))

(defun org-macros-src-block-add-name (name)
  "Add a NAME to the current sourceblock."
  (interactive "sName: ")
  (save-excursion
    (if (not (search-backward "#+BEGIN_SRC" nil t))
	(message "Src block not found"))
    (newline)
    (forward-line -1)
    (insert (concat "#+NAME: " name))))

(defmath uconvert (v u)
  "Convert value V into compatible unit U"
  (math-convert-units v u))
;;; org-latex-enhancer.el ends here
