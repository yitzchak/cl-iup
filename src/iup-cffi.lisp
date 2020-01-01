;;;; iup-cffi.lisp

(in-package #:iup)

;;; "iup" goes here. Hacks and glory await!

(define-foreign-library iup
  (:unix "libiup.so")
  (t (:default "iup")))

(use-foreign-library iup)

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Main API
;;======================================================================================
;;--------------------------------------------------------------------------------------

(defcfun ("IupOpen" %start) :iup-status
  (argc :pointer)
  (argv :pointer))

(defun start ()
  (%start (cffi:null-pointer) (cffi:null-pointer)))

(defcfun ("IupClose" stop) :void)

(defcfun ("IupImageLibOpen" IupImageLibOpen) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupMainLoop" main-loop) :iup-status)

(defcfun ("IupLoopStep" IupLoopStep) :iup-action)

(defcfun ("IupLoopStepWait" IupLoopStepWait) :iup-action)

(defcfun ("IupMainLoopLevel" IupMainLoopLevel) :int)

(defcfun ("IupFlush" IupFlush) :void)

(defcfun ("IupExitLoop" IupExitLoop) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupRecordInput" IupRecordInput) :iup-status
  (filename :string)
  (mode :iup-record-mode))

(defcfun ("IupPlayInput" IupPlayInput) :iup-status
  (filename :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupUpdate" IupUpdate) :void
  (ih :pointer))

(defcfun ("IupUpdateChildren" IupUpdateChildren) :void
  (ih :pointer))

(defcfun ("IupRedraw" IupRedraw) :void
  (ih :pointer)
  (children :int))

(defcfun ("IupRefresh" IupRefresh) :void
  (ih :pointer))

(defcfun ("IupRefreshChildren" IupRefreshChildren) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------

; (defcfun ("IupMapFont" IupMapFont) :string
;   (iupfont :string))

; (defcfun ("IupUnMapFont" IupUnMapFont) :string
;   (driverfont :string))

; int       IupExecute(const char *filename, const char* parameters);
; int       IupExecuteWait(const char *filename, const char* parameters);

(defcfun ("IupHelp" IupHelp) :int
  (url :string))

; void      IupLog(const char* type, const char* format, ...);

;;--------------------------------------------------------------------------------------

(defcfun ("IupLoad" IupLoad) :string
  (filename :string))

(defcfun ("IupLoadBuffer" IupLoadBuffer) :string
  (buffer :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupVersion" version) :string)

(defcfun ("IupVersionDate" version-date) :string)

(defcfun ("IupVersionNumber" version-number) :int)

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetLanguage" IupSetLanguage) :void
  (lng :string))

(defcfun ("IupGetLanguage" IupGetLanguage) :string)

; void      IupSetLanguageString(const char* name, const char* str);
; void      IupStoreLanguageString(const char* name, const char* str);
; char*     IupGetLanguageString(const char* name);
; void      IupSetLanguagePack(Ihandle* ih);

;;--------------------------------------------------------------------------------------

(defcfun ("IupDestroy" IupDestroy) :void
  (ih :pointer))

(defcfun ("IupDetach" IupDetach) :void
  (child :pointer))

(defcfun ("IupAppend" IupAppend) :pointer
  (ih :pointer)
  (child :pointer))

(defcfun ("IupInsert" IupInsert) :pointer
  (ih :pointer)
  (ref_child :pointer)
  (child :pointer))

(defcfun ("IupGetChild" IupGetChild) :pointer
  (ih :pointer)
  (pos :int))

(defcfun ("IupGetChildPos" IupGetChildPos) :int
  (ih :pointer)
  (child :pointer))

(defcfun ("IupGetChildCount" IupGetChildCount) :int
  (ih :pointer))

(defcfun ("IupGetNextChild" IupGetNextChild) :pointer
  (ih :pointer)
  (child :pointer))

(defcfun ("IupGetBrother" IupGetBrother) :pointer
  (ih :pointer))

(defcfun ("IupGetParent" IupGetParent) :pointer
  (ih :pointer))

(defcfun ("IupGetDialog" IupGetDialog) :pointer
  (ih :pointer))

(defcfun ("IupGetDialogChild" IupGetDialogChild) :pointer
  (ih :pointer)
  (name :string))

(defcfun ("IupReparent" IupReparent) :iup-status
  (ih :pointer)
  (new_parent :pointer)
  (ref_child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupPopup" IupPopup) :iup-status
  (ih :pointer)
  (x :iup-position)
  (y :iup-position))

(defcfun ("IupShow" show) :iup-status
  (ih :pointer))

(defcfun ("IupShowXY" show-xy) :iup-status
  (ih :pointer)
  (x :iup-position)
  (y :iup-position))

(defcfun ("IupHide" IupHide) :iup-status
  (ih :pointer))

(defcfun ("IupMap" IupMap) :iup-status
  (ih :pointer))

(defcfun ("IupUnmap" IupUnmap) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupResetAttribute" IupResetAttribute) :void
  (ih :pointer)
  (name :string))

(defcfun ("IupGetAllAttributes" IupGetAllAttributes) :int
  (ih :pointer)
  (names :pointer)
  (n :int))

; void      IupCopyAttributes(Ihandle* src_ih, Ihandle* dst_ih);

(defcfun ("IupSetAtt" IupSetAtt) :pointer
  (handle_name :string)
  (ih :pointer)
  (name :string)
  &rest)

(defcfun ("IupSetAttributes" IupSetAttributes) :pointer
  (ih :pointer)
  (str :string))

(defcfun ("IupGetAttributes" IupGetAttributes) :string
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttribute" set-attribute) :void
  (ih :pointer)
  (name :string)
  (value :string))

; void      IupSetStrAttribute(Ihandle* ih, const char* name, const char* value);
; void      IupSetStrf        (Ihandle* ih, const char* name, const char* format, ...);
; void      IupSetInt         (Ihandle* ih, const char* name, int value);
; void      IupSetFloat       (Ihandle* ih, const char* name, float value);
; void      IupSetDouble      (Ihandle* ih, const char* name, double value);
; void      IupSetRGB         (Ihandle* ih, const char* name, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetAttribute" IupGetAttribute) :string
  (ih :pointer)
  (name :string))

(defcfun ("IupGetInt" IupGetInt) :int
  (ih :pointer)
  (name :string))

(defcfun ("IupGetInt2" IupGetInt2) :int
  (ih :pointer)
  (name :string))

(defcfun ("IupGetIntInt" IupGetIntInt) :int
  (ih :pointer)
  (name :string)
  (i1 (:pointer :int))
  (i2 (:pointer :int)))

(defcfun ("IupGetFloat" IupGetFloat) :float
  (ih :pointer)
  (name :string))

; double    IupGetDouble(Ihandle* ih, const char* name);
; void      IupGetRGB      (Ihandle* ih, const char* name, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeId" IupSetAttributeId) :void
  (ih :pointer)
  (name :string)
  (id :int)
  (value :string))

; void  IupSetStrAttributeId(Ihandle* ih, const char* name, int id, const char *value);
; void  IupSetStrfId(Ihandle* ih, const char* name, int id, const char* format, ...);
; void  IupSetIntId(Ihandle* ih, const char* name, int id, int value);
; void  IupSetFloatId(Ihandle* ih, const char* name, int id, float value);
; void  IupSetDoubleId(Ihandle* ih, const char* name, int id, double value);
; void  IupSetRGBId(Ihandle* ih, const char* name, int id, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetAttributeId" IupGetAttributeId) :string
  (ih :pointer)
  (name :string)
  (id :int))

(defcfun ("IupGetIntId" IupGetIntId) :int
  (ih :pointer)
  (name :string)
  (id :int))

(defcfun ("IupGetFloatId" IupGetFloatId) :float
  (ih :pointer)
  (name :string)
  (id :int))

; double IupGetDoubleId(Ihandle* ih, const char* name, int id);
; void   IupGetRGBId(Ihandle* ih, const char* name, int id, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeId2" IupSetAttributeId2) :void
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int)
  (value :string))

; void  IupSetStrAttributeId2(Ihandle* ih, const char* name, int lin, int col, const char* value);
; void  IupSetStrfId2(Ihandle* ih, const char* name, int lin, int col, const char* format, ...);
; void  IupSetIntId2(Ihandle* ih, const char* name, int lin, int col, int value);
; void  IupSetFloatId2(Ihandle* ih, const char* name, int lin, int col, float value);
; void  IupSetDoubleId2(Ihandle* ih, const char* name, int lin, int col, double value);
; void  IupSetRGBId2(Ihandle* ih, const char* name, int lin, int col, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetAttributeId2" IupGetAttributeId2) :string
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

(defcfun ("IupGetIntId2" IupGetIntId2) :int
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

(defcfun ("IupGetFloatId2" IupGetFloatId2) :float
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

; double IupGetDoubleId2(Ihandle* ih, const char* name, int lin, int col);
; void   IupGetRGBId2(Ihandle* ih, const char* name, int lin, int col, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetGlobal" IupSetGlobal) :void
  (name :string)
  (value :string))

(defcfun ("IupStoreGlobal" IupStoreGlobal) :void
  (name :string)
  (value :string))

(defcfun ("IupGetGlobal" IupGetGlobal) :string
  (name :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetFocus" IupSetFocus) :pointer
  (ih :pointer))

(defcfun ("IupGetFocus" IupGetFocus) :pointer)

(defcfun ("IupPreviousField" IupPreviousField) :pointer
  (ih :pointer))

(defcfun ("IupNextField" IupNextField) :pointer
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetCallback" IupGetCallback) :pointer
  (ih :pointer)
  (name :string))

(defcfun ("IupSetCallback" IupSetCallback) :pointer
  (ih :pointer)
  (name :string)
  (func :pointer))

(defcfun ("IupSetCallbacks" IupSetCallbacks) :pointer
  (ih :pointer)
  (name :string)
  (func :pointer)
  &rest)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetFunction" IupGetFunction) :pointer
  (name :string))

(defcfun ("IupSetFunction" IupSetFunction) :pointer
  (name :string)
  (func :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetHandle" IupGetHandle) :pointer
  (name :string))

(defcfun ("IupSetHandle" IupSetHandle) :pointer
  (name :string)
  (ih :pointer))

(defcfun ("IupGetAllNames" IupGetAllNames) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetAllDialogs" IupGetAllDialogs) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetName" IupGetName) :string
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeHandle" IupSetAttributeHandle) :void
  (ih :pointer)
  (name :string)
  (ih_named :pointer))

(defcfun ("IupGetAttributeHandle" IupGetAttributeHandle) :pointer
  (ih :pointer)
  (name :string))

; void      IupSetAttributeHandleId(Ihandle* ih, const char* name, int id, Ihandle* ih_named);
; Ihandle*  IupGetAttributeHandleId(Ihandle* ih, const char* name, int id);
; void      IupSetAttributeHandleId2(Ihandle* ih, const char* name, int lin, int col, Ihandle* ih_named);
; Ihandle*  IupGetAttributeHandleId2(Ihandle* ih, const char* name, int lin, int col);

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetClassName" IupGetClassName) :string
  (ih :pointer))

(defcfun ("IupGetClassType" IupGetClassType) :string
  (ih :pointer))

(defcfun ("IupGetAllClasses" IupGetAllClasses) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassAttributes" IupGetClassAttributes) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassCallbacks" IupGetClassCallbacks) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupSaveClassAttributes" IupSaveClassAttributes) :void
  (ih :pointer))

(defcfun ("IupCopyClassAttributes" IupCopyClassAttributes) :void
  (src_ih :pointer)
  (dst_ih :pointer))

(defcfun ("IupSetClassDefaultAttribute" IupSetClassDefaultAttribute) :void
  (classname :string)
  (name :string)
  (value :string))

(defcfun ("IupClassMatch" IupClassMatch) :int
  (ih :pointer)
  (classname :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupCreate" IupCreate) :pointer
  (classname :string))

(defcfun ("IupCreatev" IupCreatev) :pointer
  (classname :string)
  (params :pointer))

(defcfun ("IupCreatep" IupCreatep) :pointer
  (classname :string)
  (first :pointer)
  &rest)

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Elements
;;======================================================================================
;;--------------------------------------------------------------------------------------

(defcfun ("IupFill" IupFill) :pointer)

(defcfun ("IupSpace" IupSpace) :pointer)

;;--------------------------------------------------------------------------------------

(defcfun ("IupRadio" IupRadio) :pointer
  (child :pointer))

(defcfun ("IupVbox" %vbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupVboxv" %vboxv) :pointer
  (children :pointer))

(defun vbox (&rest children)
  (with-foreign-object (foreign-children :pointer (1+ (length children)))
    (setf (mem-aref foreign-children :pointer (length children)) (null-pointer))
    (loop
      for c in children
      for i = 0 then (1+ i)
      do (setf (mem-aref foreign-children :pointer i) c))
    (%vboxv foreign-children)))

(defcfun ("IupZbox" IupZbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupZboxv" IupZboxv) :pointer
  (children :pointer))

(defcfun ("IupHbox" IupHbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupHboxv" IupHboxv) :pointer
  (children :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupNormalizer" IupNormalizer) :pointer
  (ih_first :pointer)
  &rest)

(defcfun ("IupNormalizerv" IupNormalizerv) :pointer
  (ih_list :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupCbox" IupCbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupCboxv" IupCboxv) :pointer
  (children :pointer))

(defcfun ("IupSbox" IupSbox) :pointer
  (child :pointer))

(defcfun ("IupSplit" IupSplit) :pointer
  (child1 :pointer)
  (child2 :pointer))

(defcfun ("IupScrollBox" IupScrollBox) :pointer
  (child :pointer))

(defcfun ("IupFlatScrollBox" IupFlatScrollBox) :pointer
  (child :pointer))

(defcfun ("IupGridBox" IupGridBox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupGridBoxv" IupGridBoxv) :pointer
  (children :pointer))

(defcfun ("IupExpander" IupExpander) :pointer
  (child :pointer))

(defcfun ("IupDetachBox" IupDetachBox) :pointer
  (child :pointer))

(defcfun ("IupBackgroundBox" IupBackgroundBox) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupFrame" IupFrame) :pointer
  (child :pointer))

(defcfun ("IupFlatFrame" IupFlatFrame) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupImage" IupImage) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(defcfun ("IupImageRGB" IupImageRGB) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(defcfun ("IupImageRGBA" IupImageRGBA) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupItem" IupItem) :pointer
  (title :string)
  (action :string))

(defcfun ("IupSubmenu" IupSubmenu) :pointer
  (title :string)
  (child :pointer))

(defcfun ("IupSeparator" IupSeparator) :pointer)

(defcfun ("IupMenu" IupMenu) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupMenuv" IupMenuv) :pointer
  (children :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupButton" IupButton) :pointer
  (title :string)
  (action :string))

(defcfun ("IupFlatButton" IupFlatButton) :pointer
  (title :string))

(defcfun ("IupFlatToggle" IupFlatToggle) :pointer
  (title :string))

(defcfun ("IupDropButton" IupDropButton) :pointer
  (child :pointer))

(defcfun ("IupFlatLabel" IupFlatLabel) :pointer
  (title :string))

(defcfun ("IupFlatSeparator" IupFlatSeparator) :pointer)

(defcfun ("IupCanvas" IupCanvas) :pointer
  (action :string))

(defcfun ("IupDialog" dialog) :pointer
  (child :pointer))

(defcfun ("IupUser" IupUser) :pointer)

(defcfun ("IupLabel" label) :pointer
  (title :string))

(defcfun ("IupList" IupList) :pointer
  (action :string))

(defcfun ("IupText" IupText) :pointer
  (action :string))

(defcfun ("IupMultiLine" IupMultiLine) :pointer
  (action :string))

(defcfun ("IupToggle" IupToggle) :pointer
  (title :string)
  (action :string))

(defcfun ("IupTimer" IupTimer) :pointer)

(defcfun ("IupClipboard" IupClipboard) :pointer)

(defcfun ("IupProgressBar" IupProgressBar) :pointer)

(defcfun ("IupVal" IupVal) :pointer
  (type :string))

(defcfun ("IupTabs" IupTabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupTabsv" IupTabsv) :pointer
  (children :pointer))

(defcfun ("IupFlatTabs" IupFlatTabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupFlatTabsv" IupFlatTabsv) :pointer
  (children :pointer))

(defcfun ("IupTree" IupTree) :pointer)

(defcfun ("IupLink" IupLink) :pointer
  (url :string)
  (title :string))

; Ihandle*  IupAnimatedLabel(Ihandle* animation);
; Ihandle*  IupDatePick   (void);
; Ihandle*  IupCalendar   (void);
; Ihandle*  IupColorbar   (void);
; Ihandle*  IupGauge      (void);
; Ihandle*  IupDial       (const char* type);
; Ihandle*  IupColorBrowser(void);

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Utilities
;;======================================================================================
;;--------------------------------------------------------------------------------------

; int IupStringCompare(const char* str1, const char* str2, int casesensitive, int lexicographic);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSaveImageAsText" IupSaveImageAsText) :int
  (ih :pointer)
  (file_name :string)
  (format :string)
  (name :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupTextConvertLinColToPos" IupTextConvertLinColToPos) :void
  (ih :pointer)
  (lin :int)
  (col :int)
  (pos :pointer))

(defcfun ("IupTextConvertPosToLinCol" IupTextConvertPosToLinCol) :void
  (ih :pointer)
  (pos :int)
  (lin :pointer)
  (col :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupConvertXYToPos" IupConvertXYToPos) :int
  (ih :pointer)
  (x :int)
  (y :int))

;;--------------------------------------------------------------------------------------

(defcfun ("IupTreeSetUserId" IupTreeSetUserId) :int
  (ih :pointer)
  (id :int)
  (userid :pointer))

(defcfun ("IupTreeGetUserId" IupTreeGetUserId) :pointer
  (ih :pointer)
  (id :int))

(defcfun ("IupTreeGetId" IupTreeGetId) :int
  (ih :pointer)
  (userid :pointer))

(defcfun ("IupTreeSetAttributeHandle" IupTreeSetAttributeHandle) :void
  (ih :pointer)
  (a :string)
  (id :int)
  (ih_named :pointer))

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Pre-defined dialogs
;;======================================================================================
;;--------------------------------------------------------------------------------------

(defcfun ("IupFileDlg" IupFileDlg) :pointer)

(defcfun ("IupMessageDlg" IupMessageDlg) :pointer)

(defcfun ("IupColorDlg" IupColorDlg) :pointer)

(defcfun ("IupFontDlg" IupFontDlg) :pointer)

(defcfun ("IupProgressDlg" IupProgressDlg) :pointer)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetFile" IupGetFile) :int
  (arq :string))

(defcfun ("IupMessage" message) :void
  (title :string)
  (msg :string))

(defcfun ("IupMessagef" IupMessagef) :void
  (title :string)
  (format :string)
  &rest)

; void IupMessageError(Ihandle* parent, const char* message);
; int IupMessageAlarm(Ihandle* parent, const char* title, const char *message, const char *buttons);

(defcfun ("IupAlarm" IupAlarm) :int
  (title :string)
  (msg :string)
  (b1 :string)
  (b2 :string)
  (b3 :string))

(defcfun ("IupScanf" IupScanf) :int
  (format :string)
  &rest)

(defcfun ("IupListDialog" IupListDialog) :int
  (type :int)
  (title :string)
  (size :int)
  (list :pointer)
  (op :int)
  (max_col :int)
  (max_lin :int)
  (marks :pointer))

(defcfun ("IupGetText" IupGetText) :int
  (title :string)
  (text :string))

(defcfun ("IupGetColor" IupGetColor) :int
  (x :int)
  (y :int)
  (r :pointer)
  (g :pointer)
  (b :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetParam" IupGetParam) :int
  (title :string)
  (action :pointer)
  (user_data :pointer)
  (format :string)
  &rest)

(defcfun ("IupGetParamv" IupGetParamv) :int
  (title :string)
  (action :pointer)
  (user_data :pointer)
  (format :string)
  (param_count :int)
  (param_extra :int)
  (param_data :pointer))

; Ihandle* IupParam(const char* format);
; Ihandle*  IupParamBox(Ihandle* param, ...);
; Ihandle*  IupParamBoxv(Ihandle* *param_array);

;;--------------------------------------------------------------------------------------

(defcfun ("IupLayoutDialog" IupLayoutDialog) :pointer
  (dialog :pointer))

(defcfun ("IupElementPropertiesDialog" IupElementPropertiesDialog) :pointer
  (elem :pointer))

; Ihandle* IupGlobalsDialog(void);

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Constants
;;======================================================================================
;;--------------------------------------------------------------------------------------
; Pre-Defined Masks
(defparameter IUP_MASK_FLOAT    "[+/-]?(/d+/.?/d*|/./d+)")
(defparameter IUP_MASK_UFLOAT   "(/d+/.?/d*|/./d+)")
(defparameter IUP_MASK_EFLOAT   "[+/-]?(/d+/.?/d*|/./d+)([eE][+/-]?/d+)?")
(defparameter IUP_MASK_INT      "[+/-]?/d+")
(defparameter IUP_MASK_UINT     "/d+")
;;--------------------------------------------------------------------------------------
; IupGetParam Callback situations
(defconstant IUP_GETPARAM_OK     -1)
(defconstant IUP_GETPARAM_INIT   -2)
(defconstant IUP_GETPARAM_CANCEL -3)
(defconstant IUP_GETPARAM_HELP   -4)

