;; python-mode
(require 'python-mode)
(add-hook 'python-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq py-indent-offset 4)))

(defun pytest()
(interactive)
(call-process "pwd" nil "pytest" nil)
(call-process "python" nil "pytest" nil "-W" "ignore::DeprecationWarning" buffer-file-name)
(set-buffer (get-buffer-create "pytest"))
(end-of-buffer)
(display-buffer (current-buffer)))

(global-set-key "\C-xt" 'pytest)
