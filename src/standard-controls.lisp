(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupButton" %button) :pointer
  (title :string)
  (action :string))

(defun button (title &optional (action (cffi:null-pointer)))
  (%button title action))

(cffi:defcfun ("IupFlatButton" iup-flat-button) :pointer
  (title :string))

(cffi:defcfun ("IupFlatToggle" iup-flat-toggle) :pointer
  (title :string))

(cffi:defcfun ("IupDropButton" iup-drop-button) :pointer
  (child :pointer))

(cffi:defcfun ("IupFlatLabel" iup-flat-label) :pointer
  (title :string))

(cffi:defcfun ("IupFlatSeparator" iup-flat-separator) :pointer)

(cffi:defcfun ("IupCanvas" iup-canvas) :pointer
  (action :string))

(cffi:defcfun ("IupDialog" dialog) :pointer
  (child :pointer))

(cffi:defcfun ("IupUser" iup-user) :pointer)

(cffi:defcfun ("IupLabel" label) :pointer
  (title :string))

(cffi:defcfun ("IupList" iup-list) :pointer
  (action :string))

(cffi:defcfun ("IupText" %text) :pointer
  (action :string))

(defun text (&optional (action (cffi:null-pointer)))
  (%text action))

(cffi:defcfun ("IupMultiLine" iup-multi-line) :pointer
  (action :string))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupTextConvertLinColToPos" iup-text-convert-lin-col-to-pos) :void
  (ih :pointer)
  (lin :int)
  (col :int)
  (pos :pointer))

(cffi:defcfun ("IupTextConvertPosToLinCol" iup-text-convert-pos-to-lin-col) :void
  (ih :pointer)
  (pos :int)
  (lin :pointer)
  (col :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupTreeSetUserId" iup-tree-set-user-id) :int
  (ih :pointer)
  (id :int)
  (userid :pointer))

(cffi:defcfun ("IupTreeGetUserId" iup-tree-get-user-id) :pointer
  (ih :pointer)
  (id :int))

(cffi:defcfun ("IupTreeGetId" iup-tree-get-id) :int
  (ih :pointer)
  (userid :pointer))

(cffi:defcfun ("IupTreeSetAttributeHandle" iup-tree-set-attribute-handle) :void
  (ih :pointer)
  (a :string)
  (id :int)
  (ih_named :pointer))


(cffi:defcfun ("IupToggle" iup-toggle) :pointer
  (title :string)
  (action :string))

(cffi:defcfun ("IupTimer" iup-timer) :pointer)

(cffi:defcfun ("IupClipboard" iup-clipboard) :pointer)

(cffi:defcfun ("IupProgressBar" iup-progress-bar) :pointer)

(cffi:defcfun ("IupVal" iup-val) :pointer
  (type :string))

(cffi:defcfun ("IupTree" iup-tree) :pointer)

(cffi:defcfun ("IupLink" iup-link) :pointer
  (url :string)
  (title :string))

; Ihandle*  IupAnimatedLabel(Ihandle* animation);
; Ihandle*  IupDatePick   (void);
; Ihandle*  IupCalendar   (void);
; Ihandle*  IupColorbar   (void);
; Ihandle*  IupGauge      (void);
; Ihandle*  IupDial       (const char* type);
; Ihandle*  IupColorBrowser(void);


