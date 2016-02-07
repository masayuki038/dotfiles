;;; make-temp-buffer
(defun generate-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "tmp-buffer")))

(global-set-key "\M-n" 'generate-buffer)
