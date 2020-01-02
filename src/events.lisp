(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupMainLoop" main-loop) :iup-status)

(cffi:defcfun ("IupLoopStep" loop-step) :iup-action)

(cffi:defcfun ("IupLoopStepWait" loop-step-wait) :iup-action)

(cffi:defcfun ("IupMainLoopLevel" main-loop-level) :int)

(cffi:defcfun ("IupFlush" flush) :void)

(cffi:defcfun ("IupExitLoop" exit-loop) :void)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetCallback" iup-get-callback) :pointer
  (ih iup-handle)
  (name :string))

(cffi:defcfun ("IupSetCallback" set-callback) :pointer
  (ih iup-handle)
  (name :string)
  (func :pointer))

(cffi:defcfun ("IupSetCallbacks" iup-set-callbacks) :pointer
  (ih iup-handle)
  (name :string)
  (func :pointer)
  &rest)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetFunction" iup-get-function) :pointer
  (name :string))

(cffi:defcfun ("IupSetFunction" iup-set-function) :pointer
  (name :string)
  (func :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupRecordInput" record-input) :iup-status
  (filename :string)
  (mode :iup-record-mode))

(cffi:defcfun ("IupPlayInput" play-input) :iup-status
  (filename :string))


