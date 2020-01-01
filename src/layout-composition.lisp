(in-package #:iup)

(defcfun ("IupDetach" iup-detach) :void
  (child :pointer))

(defcfun ("IupAppend" iup-append) :pointer
  (ih :pointer)
  (child :pointer))

(defcfun ("IupInsert" iup-insert) :pointer
  (ih :pointer)
  (ref_child :pointer)
  (child :pointer))

(defcfun ("IupGetChild" iup-get-child) :pointer
  (ih :pointer)
  (pos :int))

(defcfun ("IupGetChildPos" iup-get-child-pos) :int
  (ih :pointer)
  (child :pointer))

(defcfun ("IupGetChildCount" iup-get-child-count) :int
  (ih :pointer))

(defcfun ("IupGetNextChild" iup-get-next-child) :pointer
  (ih :pointer)
  (child :pointer))

(defcfun ("IupGetBrother" iup-get-brother) :pointer
  (ih :pointer))

(defcfun ("IupGetParent" iup-get-parent) :pointer
  (ih :pointer))

(defcfun ("IupGetDialog" iup-get-dialog) :pointer
  (ih :pointer))

(defcfun ("IupGetDialogChild" iup-get-dialog-child) :pointer
  (ih :pointer)
  (name :string))

(defcfun ("IupReparent" iup-reparent) :iup-status
  (ih :pointer)
  (new_parent :pointer)
  (ref_child :pointer))

(defcfun ("IupRefresh" iup-refresh) :void
  (ih :pointer))

(defcfun ("IupRefreshChildren" iup-refresh-children) :void
  (ih :pointer))


