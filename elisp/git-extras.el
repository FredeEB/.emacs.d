(require 'url)
(require 'json)

(defun get-github-repos (user repo field)
  (interactive "sUser: \nsRepo: \nsField:")
  (message (cdr (assoc field
	   (with-current-buffer
	       (url-retrieve-synchronously (format "https://api.github.com/repos/%s/%s" user repo))
	     (goto-char (+ 1 url-http-end-of-headers))
	     (json-read-object)))))))
