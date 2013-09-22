;; erlang-mode
(setq load-path (cons  "/opt/erlang/R16B01/lib/erlang/lib/tools-2.6.11/emacs"
      load-path))
(setq erlang-root-dir "/opt/erlang/R16B01")
(setq exec-path (cons "/opt/erlang/R16B01/bin" exec-path))
(require 'erlang-start)

;; distel
(add-to-list 'load-path "/usr/local/share/distel/elisp")
(require 'distel)
(distel-setup)

;; Some Erlang customazations
(add-hook 'erlang-mode-hook
  (lambda ()
    (setq inferior-erlang-machine-options `("-sname" "masayuki"))
    (imenu-add-to-menubar "imenu")
  )
)
