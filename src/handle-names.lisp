(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetHandle" iup-get-handle) :pointer
  (name :string))

(defcfun ("IupSetHandle" iup-set-handle) :pointer
  (name :string)
  (ih :pointer))

(defcfun ("IupGetAllNames" iup-get-all-names) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetAllDialogs" iup-get-all-dialogs) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetName" iup-get-name) :string
  (ih :pointer))


