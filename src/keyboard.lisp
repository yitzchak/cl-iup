(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetFocus" iup-set-focus) :pointer
  (ih :pointer))

(defcfun ("IupGetFocus" iup-get-focus) :pointer)

(defcfun ("IupPreviousField" iup-previous-field) :pointer
  (ih :pointer))

(defcfun ("IupNextField" iup-next-field) :pointer
  (ih :pointer))


