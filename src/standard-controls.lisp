(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupButton" %button) :pointer
  (title :string)
  (action :string))

(defun button (title &optional (action (null-pointer)))
  (%button title action))

(defcfun ("IupFlatButton" iup-flat-button) :pointer
  (title :string))

(defcfun ("IupFlatToggle" iup-flat-toggle) :pointer
  (title :string))

(defcfun ("IupDropButton" iup-drop-button) :pointer
  (child :pointer))

(defcfun ("IupFlatLabel" iup-flat-label) :pointer
  (title :string))

(defcfun ("IupFlatSeparator" iup-flat-separator) :pointer)

(defcfun ("IupCanvas" iup-canvas) :pointer
  (action :string))

(defcfun ("IupDialog" dialog) :pointer
  (child :pointer))

(defcfun ("IupUser" iup-user) :pointer)

(defcfun ("IupLabel" label) :pointer
  (title :string))

(defcfun ("IupList" iup-list) :pointer
  (action :string))

(defcfun ("IupText" iup-text) :pointer
  (action :string))

(defcfun ("IupMultiLine" iup-multi-line) :pointer
  (action :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupTextConvertLinColToPos" iup-text-convert-lin-col-to-pos) :void
  (ih :pointer)
  (lin :int)
  (col :int)
  (pos :pointer))

(defcfun ("IupTextConvertPosToLinCol" iup-text-convert-pos-to-lin-col) :void
  (ih :pointer)
  (pos :int)
  (lin :pointer)
  (col :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupTreeSetUserId" iup-tree-set-user-id) :int
  (ih :pointer)
  (id :int)
  (userid :pointer))

(defcfun ("IupTreeGetUserId" iup-tree-get-user-id) :pointer
  (ih :pointer)
  (id :int))

(defcfun ("IupTreeGetId" iup-tree-get-id) :int
  (ih :pointer)
  (userid :pointer))

(defcfun ("IupTreeSetAttributeHandle" iup-tree-set-attribute-handle) :void
  (ih :pointer)
  (a :string)
  (id :int)
  (ih_named :pointer))


(defcfun ("IupToggle" iup-toggle) :pointer
  (title :string)
  (action :string))

(defcfun ("IupTimer" iup-timer) :pointer)

(defcfun ("IupClipboard" iup-clipboard) :pointer)

(defcfun ("IupProgressBar" iup-progress-bar) :pointer)

(defcfun ("IupVal" iup-val) :pointer
  (type :string))

(defcfun ("IupTree" iup-tree) :pointer)

(defcfun ("IupLink" iup-link) :pointer
  (url :string)
  (title :string))

; Ihandle*  IupAnimatedLabel(Ihandle* animation);
; Ihandle*  IupDatePick   (void);
; Ihandle*  IupCalendar   (void);
; Ihandle*  IupColorbar   (void);
; Ihandle*  IupGauge      (void);
; Ihandle*  IupDial       (const char* type);
; Ihandle*  IupColorBrowser(void);


