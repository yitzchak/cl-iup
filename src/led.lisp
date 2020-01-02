(in-package #:iup)

(cffi:defcfun ("IupLoad" iup-load) :string
  (filename :string))

(cffi:defcfun ("IupLoadBuffer" iup-load-buffer) :string
  (buffer :string))

