(defun merge-buffer ()
  "opens current buffer in a different frame and kills current frame"
  (interactive)
  (let* '(bn (buffer-name))
    (delete-frame)
    (split-window (selected-window) nil nil)
    (switch-to-buffer bn)))
