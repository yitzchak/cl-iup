(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupMainLoop" main-loop) :iup-status)

(defcfun ("IupLoopStep" loop-step) :iup-action)

(defcfun ("IupLoopStepWait" loop-step-wait) :iup-action)

(defcfun ("IupMainLoopLevel" main-loop-level) :int)

(defcfun ("IupFlush" flush) :void)

(defcfun ("IupExitLoop" exit-loop) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetCallback" iup-get-callback) :pointer
  (ih :pointer)
  (name :string))

(defcfun ("IupSetCallback" set-callback) :pointer
  (ih :pointer)
  (name :string)
  (func :pointer))

(defcfun ("IupSetCallbacks" iup-set-callbacks) :pointer
  (ih :pointer)
  (name :string)
  (func :pointer)
  &rest)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetFunction" iup-get-function) :pointer
  (name :string))

(defcfun ("IupSetFunction" iup-set-function) :pointer
  (name :string)
  (func :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupRecordInput" record-input) :iup-status
  (filename :string)
  (mode :iup-record-mode))

(defcfun ("IupPlayInput" play-input) :iup-status
  (filename :string))


