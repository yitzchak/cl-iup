(in-package #:iup)

(defcfun ("IupLoad" iup-load) :string
  (filename :string))

(defcfun ("IupLoadBuffer" iup-load-buffer) :string
  (buffer :string))

