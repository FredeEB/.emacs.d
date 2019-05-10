(defun merge-buffer ()
  "opens current buffer in a different frame and kills current frame"
  (interactive)
  (let* '(bn (buffer-name))
    (delete-frame)
    (split-window (selected-window) nil nil)
    (switch-to-buffer bn)))

(defun insert-output-of-executed-line ()
  "executes line at point in default shell and inserts stdout"
  (interactive)
  (insert
   (shell-command-to-string
    (delete-and-extract-region
     (point-at-bol)
     (point-at-eol)))))
