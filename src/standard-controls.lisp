(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupButton" %button) iup-handle
  (title :string)
  (action :string))

(defun button (title &optional (action (cffi:null-pointer)))
  (%button title action))

(cffi:defcfun ("IupFlatButton" iup-flat-button) iup-handle
  (title :string))

(cffi:defcfun ("IupFlatToggle" iup-flat-toggle) iup-handle
  (title :string))

(cffi:defcfun ("IupDropButton" iup-drop-button) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupFlatLabel" iup-flat-label) iup-handle
  (title :string))

(cffi:defcfun ("IupFlatSeparator" iup-flat-separator) iup-handle)

(cffi:defcfun ("IupCanvas" iup-canvas) iup-handle
  (action :string))

(cffi:defcfun ("IupDialog" dialog) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupUser" iup-user) iup-handle)

(cffi:defcfun ("IupLabel" label) iup-handle
  (title :string))

(cffi:defcfun ("IupList" iup-list) iup-handle
  (action :string))

(cffi:defcfun ("IupText" %text) iup-handle
  (action :string))

(defun text (&optional (action (cffi:null-pointer)))
  (%text action))

(cffi:defcfun ("IupMultiLine" iup-multi-line) iup-handle
  (action :string))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupTextConvertLinColToPos" iup-text-convert-lin-col-to-pos) :void
  (ih iup-handle)
  (lin :int)
  (col :int)
  (pos :pointer))

(cffi:defcfun ("IupTextConvertPosToLinCol" iup-text-convert-pos-to-lin-col) :void
  (ih iup-handle)
  (pos :int)
  (lin :pointer)
  (col :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupTreeSetUserId" iup-tree-set-user-id) :int
  (ih iup-handle)
  (id :int)
  (userid :pointer))

(cffi:defcfun ("IupTreeGetUserId" iup-tree-get-user-id) :pointer
  (ih iup-handle)
  (id :int))

(cffi:defcfun ("IupTreeGetId" iup-tree-get-id) :int
  (ih iup-handle)
  (userid :pointer))

(cffi:defcfun ("IupTreeSetAttributeHandle" iup-tree-set-attribute-handle) :void
  (ih iup-handle)
  (a :string)
  (id :int)
  (ih_named :pointer))


(cffi:defcfun ("IupToggle" iup-toggle) iup-handle
  (title :string)
  (action :string))

(cffi:defcfun ("IupTimer" iup-timer) :pointer)

(cffi:defcfun ("IupClipboard" iup-clipboard) :pointer)

(cffi:defcfun ("IupProgressBar" iup-progress-bar) iup-handle)

(cffi:defcfun ("IupVal" iup-val) :pointer
  (type :string))

(cffi:defcfun ("IupTree" iup-tree) iup-handle)

(cffi:defcfun ("IupLink" iup-link) iup-handle
  (url :string)
  (title :string))

; Ihandle*  IupAnimatedLabel(Ihandle* animation);
; Ihandle*  IupDatePick   (void);
; Ihandle*  IupCalendar   (void);
; Ihandle*  IupColorbar   (void);
; Ihandle*  IupGauge      (void);
; Ihandle*  IupDial       (const char* type);
; Ihandle*  IupColorBrowser(void);


