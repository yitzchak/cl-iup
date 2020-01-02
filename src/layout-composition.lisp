(in-package #:iup)

(cffi:defcfun ("IupDetach" iup-detach) :void
  (child :pointer))

(cffi:defcfun ("IupAppend" iup-append) :pointer
  (ih :pointer)
  (child :pointer))

(cffi:defcfun ("IupInsert" iup-insert) :pointer
  (ih :pointer)
  (ref_child :pointer)
  (child :pointer))

(cffi:defcfun ("IupGetChild" iup-get-child) :pointer
  (ih :pointer)
  (pos :int))

(cffi:defcfun ("IupGetChildPos" iup-get-child-pos) :int
  (ih :pointer)
  (child :pointer))

(cffi:defcfun ("IupGetChildCount" iup-get-child-count) :int
  (ih :pointer))

(cffi:defcfun ("IupGetNextChild" iup-get-next-child) :pointer
  (ih :pointer)
  (child :pointer))

(cffi:defcfun ("IupGetBrother" iup-get-brother) :pointer
  (ih :pointer))

(cffi:defcfun ("IupGetParent" iup-get-parent) :pointer
  (ih :pointer))

(cffi:defcfun ("IupGetDialog" iup-get-dialog) :pointer
  (ih :pointer))

(cffi:defcfun ("IupGetDialogChild" iup-get-dialog-child) :pointer
  (ih :pointer)
  (name :string))

(cffi:defcfun ("IupReparent" iup-reparent) :iup-status
  (ih :pointer)
  (new_parent :pointer)
  (ref_child :pointer))

(cffi:defcfun ("IupRefresh" iup-refresh) :void
  (ih :pointer))

(cffi:defcfun ("IupRefreshChildren" iup-refresh-children) :void
  (ih :pointer))


