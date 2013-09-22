(defun reload-erlcscope ()
  (interactive)
  (setq pwd (getenv "PWD"))
  (message pwd)
  (start-process "erlcscope" "*erlcscope*" "erlcscope" pwd)
)

(global-set-key (kbd "C-c s R") 'reload-erlcscope)
