(in-package #:iup)

(cffi:defcfun ("IupDetach" iup-detach) :void
  (child iup-handle))

(cffi:defcfun ("IupAppend" iup-append) :pointer
  (ih iup-handle)
  (child iup-handle))

(cffi:defcfun ("IupInsert" iup-insert) :pointer
  (ih iup-handle)
  (ref_child :pointer)
  (child iup-handle))

(cffi:defcfun ("IupGetChild" iup-get-child) :pointer
  (ih iup-handle)
  (pos :int))

(cffi:defcfun ("IupGetChildPos" iup-get-child-pos) :int
  (ih iup-handle)
  (child iup-handle))

(cffi:defcfun ("IupGetChildCount" iup-get-child-count) :int
  (ih iup-handle))

(cffi:defcfun ("IupGetNextChild" iup-get-next-child) :pointer
  (ih iup-handle)
  (child iup-handle))

(cffi:defcfun ("IupGetBrother" iup-get-brother) :pointer
  (ih iup-handle))

(cffi:defcfun ("IupGetParent" iup-get-parent) :pointer
  (ih iup-handle))

(cffi:defcfun ("IupGetDialog" iup-get-dialog) :pointer
  (ih iup-handle))

(cffi:defcfun ("IupGetDialogChild" iup-get-dialog-child) :pointer
  (ih iup-handle)
  (name :string))

(cffi:defcfun ("IupReparent" iup-reparent) :iup-status
  (ih iup-handle)
  (new_parent :pointer)
  (ref_child :pointer))

(cffi:defcfun ("IupRefresh" iup-refresh) :void
  (ih iup-handle))

(cffi:defcfun ("IupRefreshChildren" iup-refresh-children) :void
  (ih iup-handle))


