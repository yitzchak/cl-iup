(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetFocus" iup-set-focus) :pointer
  (ih :pointer))

(cffi:defcfun ("IupGetFocus" iup-get-focus) :pointer)

(cffi:defcfun ("IupPreviousField" iup-previous-field) :pointer
  (ih :pointer))

(cffi:defcfun ("IupNextField" iup-next-field) :pointer
  (ih :pointer))


