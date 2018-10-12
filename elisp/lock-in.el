;;; package -- locks you in
;;; Commentary:
;;; Code:
(defun lock-in (genre)
  "Locks in, GENRE is mood."
  (interactive "MMood?")
  (shell-command (concat "tizonia --youtube-audio-search --daemon \"" genre "\""))
  (message "locked in"))

(defun tap-out ()
  "Releases the shackles."
  (interactive)
  (shell-command "pkill tizonia")
  (message "you're free to go now"))

;;; lock-in.el ends here
