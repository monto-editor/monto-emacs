; Add elisp-ffi (a dependency of ours) and monto-mode to the load path.
(add-to-list 'load-path "~/.emacs.d/elisp-ffi")
(add-to-list 'load-path "~/.emacs.d/monto-mode")

; Load Monto Mode.
(require 'monto-mode)

; Set the name of the ZeroMQ library. This *will* need to be tweaked depending
; on your system configuration.
(setq monto-libzmq "libzmq.so.5")

; Set up Monto fonts.
(def-monto-highlighting-styles
  (comment
    :foreground "grey")
  (constant
    :foreground "red")
  (identifier
    :foreground "purple")
  (keyword
    :foreground "orange")
  (literal
    :foreground "blue")
  (operator
    :foreground "green"))

; Set up Monto languages.
(def-monto-languages
  ("dcv2"   "dcv2")
  ("silver" "sv"))
