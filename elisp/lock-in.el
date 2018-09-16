;;; package -- locks you in
;;; Commentary:
;;; Code:
(defun lock-in ()
  "Locks in."
  (interactive)
  (start-process-shell-command "Tizonia" "*The Shuttle*" "tizonia --youtube-audio-search \"synthwave\"")
  (message "locked in"))

(defun tap-out ()
  "Releases the shackles."
  (interactive)
  (kill-buffer "*The Shuttle*")
  (message "you're free to go now"))

;;; lock-in.el ends here
