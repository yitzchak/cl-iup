(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupItem" %item) iup-handle
  (title :string)
  (action :string))

(defun item (title &optional (action (cffi:null-pointer)))
  (%item title action))

(cffi:defcfun ("IupSubmenu" submenu) iup-handle
  (title :string)
  (child iup-handle))

(cffi:defcfun ("IupSeparator" separator) iup-handle)

(cffi:defcfun ("IupMenuv" menuv) iup-handle
  (children iup-handles))

(defun menu (&rest children)
  (menuv children))

