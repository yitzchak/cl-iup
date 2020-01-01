(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupItem" iup-item) :pointer
  (title :string)
  (action :string))

(defcfun ("IupSubmenu" iup-submenu) :pointer
  (title :string)
  (child :pointer))

(defcfun ("IupSeparator" iup-separator) :pointer)

(defcfun ("IupMenu" iup-menu) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupMenuv" iup-menuv) :pointer
  (children :pointer))


