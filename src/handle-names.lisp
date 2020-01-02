(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetHandle" iup-get-handle) :pointer
  (name :string))

(cffi:defcfun ("IupSetHandle" iup-set-handle) :pointer
  (name :string)
  (ih iup-handle))

(cffi:defcfun ("IupGetAllNames" iup-get-all-names) :int
  (names :pointer)
  (n :int))

(cffi:defcfun ("IupGetAllDialogs" iup-get-all-dialogs) :int
  (names :pointer)
  (n :int))

(cffi:defcfun ("IupGetName" iup-get-name) :string
  (ih iup-handle))


