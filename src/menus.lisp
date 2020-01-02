(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupItem" %item) :pointer
  (title :string)
  (action :string))

(defun item (title &optional (action (cffi:null-pointer)))
  (%item title action))

(cffi:defcfun ("IupSubmenu" submenu) :pointer
  (title :string)
  (child :pointer))

(cffi:defcfun ("IupSeparator" separator) :pointer)

;(cffi:defcfun ("IupMenu" menu) :pointer
;  (child :pointer)
;  &rest)

(cffi:defcfun ("IupMenuv" %menuv) :pointer
  (children :pointer))

(defun menu (&rest children)
  (with-ihandle-sequence (a children)
    (%menuv a)))

