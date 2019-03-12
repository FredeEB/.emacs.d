(require 'url)
(require 'json)

(defun get-github-repo-field (user repo field)
  "fetches USER/REPO from github api and retrieves FIELD"
  (cdr
   (assoc field
	  (with-current-buffer
	      (url-retrieve-synchronously (format "https://api.github.com/repos/%s/%s" user repo))
	    (goto-char (+ 1 url-http-end-of-headers))
	    (json-read-object)))))

(defun insert-github-repo-field (user repo field)
  "Inserts FIELD from api.github.com/USER/REPO"
  (interactive "sUser: \nsRepo: \nSField: ")
  (insert
   (format "%s" (get-github-repo-field user repo field))))

(defun org-github-link (user repo)
  "Inserts a github link at USER/REPO."
  (interactive "sUser: \nsRepo: ")
  (insert (format "[[https://github.com/%s/%s][%s/%s]]" user repo user repo)))
