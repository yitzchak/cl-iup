(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetFocus" iup-set-focus) :pointer
  (ih iup-handle))

(cffi:defcfun ("IupGetFocus" iup-get-focus) :pointer)

(cffi:defcfun ("IupPreviousField" iup-previous-field) :pointer
  (ih iup-handle))

(cffi:defcfun ("IupNextField" iup-next-field) :pointer
  (ih iup-handle))


