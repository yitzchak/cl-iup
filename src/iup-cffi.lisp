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

(defcfun ("IupImageLibOpen" image-lib-open) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupMainLoop" main-loop) :iup-status)

(defcfun ("IupLoopStep" loop-step) :iup-action)

(defcfun ("IupLoopStepWait" loop-step-wait) :iup-action)

(defcfun ("IupMainLoopLevel" main-loop-level) :int)

(defcfun ("IupFlush" flush) :void)

(defcfun ("IupExitLoop" exit-loop) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupRecordInput" record-input) :iup-status
  (filename :string)
  (mode :iup-record-mode))

(defcfun ("IupPlayInput" play-input) :iup-status
  (filename :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupUpdate" iup-update) :void
  (ih :pointer))

(defcfun ("IupUpdateChildren" iup-update-children) :void
  (ih :pointer))

(defcfun ("IupRedraw" iup-redraw) :void
  (ih :pointer)
  (children :int))

(defcfun ("IupRefresh" iup-refresh) :void
  (ih :pointer))

(defcfun ("IupRefreshChildren" iup-refresh-children) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------

; (defcfun ("IupMapFont" IupMapFont) :string
;   (iupfont :string))

; (defcfun ("IupUnMapFont" IupUnMapFont) :string
;   (driverfont :string))

; int       IupExecute(const char *filename, const char* parameters);
; int       IupExecuteWait(const char *filename, const char* parameters);

(defcfun ("IupHelp" iup-help) :int
  (url :string))

; void      IupLog(const char* type, const char* format, ...);

;;--------------------------------------------------------------------------------------

(defcfun ("IupLoad" iup-load) :string
  (filename :string))

(defcfun ("IupLoadBuffer" iup-load-buffer) :string
  (buffer :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupVersion" version) :string)

(defcfun ("IupVersionDate" version-date) :string)

(defcfun ("IupVersionNumber" version-number) :int)

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetLanguage" iup-set-language) :void
  (lng :string))

(defcfun ("IupGetLanguage" iup-get-language) :string)

; void      IupSetLanguageString(const char* name, const char* str);
; void      IupStoreLanguageString(const char* name, const char* str);
; char*     IupGetLanguageString(const char* name);
; void      IupSetLanguagePack(Ihandle* ih);

;;--------------------------------------------------------------------------------------

(defcfun ("IupDestroy" iup-destroy) :void
  (ih :pointer))

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

;;--------------------------------------------------------------------------------------

(defcfun ("IupPopup" iup-popup) :iup-status
  (ih :pointer)
  (x :iup-position)
  (y :iup-position))

(defcfun ("IupShow" show) :iup-status
  (ih :pointer))

(defcfun ("IupShowXY" show-xy) :iup-status
  (ih :pointer)
  (x :iup-position)
  (y :iup-position))

(defcfun ("IupHide" iup-hide) :iup-status
  (ih :pointer))

(defcfun ("IupMap" iup-map) :iup-status
  (ih :pointer))

(defcfun ("IupUnmap" iup-unmap) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupResetAttribute" iup-reset-attribute) :void
  (ih :pointer)
  (name :string))

(defcfun ("IupGetAllAttributes" iup-get-all-attributes) :int
  (ih :pointer)
  (names :pointer)
  (n :int))

; void      IupCopyAttributes(Ihandle* src_ih, Ihandle* dst_ih);

(defcfun ("IupSetAtt" iup-set-att) :pointer
  (handle_name :string)
  (ih :pointer)
  (name :string)
  &rest)

(defcfun ("IupSetAttributes" iup-set-attributes) :pointer
  (ih :pointer)
  (str :string))

(defcfun ("IupGetAttributes" iup-get-attributes) :string
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

(defcfun ("IupGetAttribute" iup-get-attribute) :string
  (ih :pointer)
  (name :string))

(defcfun ("IupGetInt" iup-get-int) :int
  (ih :pointer)
  (name :string))

(defcfun ("IupGetInt2" iup-get-int2) :int
  (ih :pointer)
  (name :string))

(defcfun ("IupGetIntInt" iup-get-int-int) :int
  (ih :pointer)
  (name :string)
  (i1 (:pointer :int))
  (i2 (:pointer :int)))

(defcfun ("IupGetFloat" iup-get-float) :float
  (ih :pointer)
  (name :string))

; double    IupGetDouble(Ihandle* ih, const char* name);
; void      IupGetRGB      (Ihandle* ih, const char* name, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeId" iup-set-attribute-id) :void
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

(defcfun ("IupGetAttributeId" iup-get-attribute-id) :string
  (ih :pointer)
  (name :string)
  (id :int))

(defcfun ("IupGetIntId" iup-get-int-id) :int
  (ih :pointer)
  (name :string)
  (id :int))

(defcfun ("IupGetFloatId" iup-get-float-id) :float
  (ih :pointer)
  (name :string)
  (id :int))

; double IupGetDoubleId(Ihandle* ih, const char* name, int id);
; void   IupGetRGBId(Ihandle* ih, const char* name, int id, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeId2" iup-set-attribute-id2) :void
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

(defcfun ("IupGetAttributeId2" iup-get-attribute-id2) :string
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

(defcfun ("IupGetIntId2" iup-get-int-id2) :int
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

(defcfun ("IupGetFloatId2" iup-get-float-id2) :float
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int))

; double IupGetDoubleId2(Ihandle* ih, const char* name, int lin, int col);
; void   IupGetRGBId2(Ihandle* ih, const char* name, int lin, int col, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetGlobal" iup-set-global) :void
  (name :string)
  (value :string))

(defcfun ("IupStoreGlobal" iup-store-global) :void
  (name :string)
  (value :string))

(defcfun ("IupGetGlobal" iup-get-global) :string
  (name :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetFocus" iup-set-focus) :pointer
  (ih :pointer))

(defcfun ("IupGetFocus" iup-get-focus) :pointer)

(defcfun ("IupPreviousField" iup-previous-field) :pointer
  (ih :pointer))

(defcfun ("IupNextField" iup-next-field) :pointer
  (ih :pointer))

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

(defcfun ("IupGetHandle" iup-get-handle) :pointer
  (name :string))

(defcfun ("IupSetHandle" iup-set-handle) :pointer
  (name :string)
  (ih :pointer))

(defcfun ("IupGetAllNames" iup-get-all-names) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetAllDialogs" iup-get-all-dialogs) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetName" iup-get-name) :string
  (ih :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttributeHandle" iup-set-attribute-handle) :void
  (ih :pointer)
  (name :string)
  (ih_named :pointer))

(defcfun ("IupGetAttributeHandle" iup-get-attribute-handle) :pointer
  (ih :pointer)
  (name :string))

; void      IupSetAttributeHandleId(Ihandle* ih, const char* name, int id, Ihandle* ih_named);
; Ihandle*  IupGetAttributeHandleId(Ihandle* ih, const char* name, int id);
; void      IupSetAttributeHandleId2(Ihandle* ih, const char* name, int lin, int col, Ihandle* ih_named);
; Ihandle*  IupGetAttributeHandleId2(Ihandle* ih, const char* name, int lin, int col);

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetClassName" iup-get-class-name) :string
  (ih :pointer))

(defcfun ("IupGetClassType" iup-get-class-type) :string
  (ih :pointer))

(defcfun ("IupGetAllClasses" iup-get-all-classes) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassAttributes" iup-get-class-attributes) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassCallbacks" iup-get-class-callbacks) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupSaveClassAttributes" iup-save-class-attributes) :void
  (ih :pointer))

(defcfun ("IupCopyClassAttributes" iup-copy-class-attributes) :void
  (src_ih :pointer)
  (dst_ih :pointer))

(defcfun ("IupSetClassDefaultAttribute" iup-set-class-default-attribute) :void
  (classname :string)
  (name :string)
  (value :string))

(defcfun ("IupClassMatch" iup-class-match) :int
  (ih :pointer)
  (classname :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupCreate" iup-create) :pointer
  (classname :string))

(defcfun ("IupCreatev" iup-createv) :pointer
  (classname :string)
  (params :pointer))

(defcfun ("IupCreatep" iup-createp) :pointer
  (classname :string)
  (first :pointer)
  &rest)

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Elements
;;======================================================================================
;;--------------------------------------------------------------------------------------

(defcfun ("IupFill" iup-fill) :pointer)

(defcfun ("IupSpace" iup-space) :pointer)

;;--------------------------------------------------------------------------------------

(defcfun ("IupRadio" iup-radio) :pointer
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

(defcfun ("IupZbox" iup-zbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupZboxv" iup-zboxv) :pointer
  (children :pointer))

(defcfun ("IupHbox" iup-hbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupHboxv" iup-hboxv) :pointer
  (children :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupNormalizer" iup-normalizer) :pointer
  (ih_first :pointer)
  &rest)

(defcfun ("IupNormalizerv" iup-normalizerv) :pointer
  (ih_list :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupCbox" iup-cbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupCboxv" iup-cboxv) :pointer
  (children :pointer))

(defcfun ("IupSbox" iup-sbox) :pointer
  (child :pointer))

(defcfun ("IupSplit" iup-split) :pointer
  (child1 :pointer)
  (child2 :pointer))

(defcfun ("IupScrollBox" iup-scroll-box) :pointer
  (child :pointer))

(defcfun ("IupFlatScrollBox" iup-flat-scroll-box) :pointer
  (child :pointer))

(defcfun ("IupGridBox" iup-grid-box) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupGridBoxv" iup-grid-boxv) :pointer
  (children :pointer))

(defcfun ("IupExpander" iup-expander) :pointer
  (child :pointer))

(defcfun ("IupDetachBox" iup-detach-box) :pointer
  (child :pointer))

(defcfun ("IupBackgroundBox" iup-background-box) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupFrame" iup-frame) :pointer
  (child :pointer))

(defcfun ("IupFlatFrame" iup-flat-frame) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupImage" iup-image) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(defcfun ("IupImageRGB" iup-image-rgb) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(defcfun ("IupImageRGBA" iup-image-rgba) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupItem" iup-item) :pointer
  (title :string)
  (action :string))

(defcfun ("IupSubmenu" iup-submenu) :pointer
  (title :string)
  (child :pointer))

(defcfun ("IupSeparator" iup-separator) :pointer)

(defcfun ("IupMenu" iup-menu) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupMenuv" iup-menuv) :pointer
  (children :pointer))

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

(defcfun ("IupToggle" iup-toggle) :pointer
  (title :string)
  (action :string))

(defcfun ("IupTimer" iup-timer) :pointer)

(defcfun ("IupClipboard" iup-clipboard) :pointer)

(defcfun ("IupProgressBar" iup-progress-bar) :pointer)

(defcfun ("IupVal" iup-val) :pointer
  (type :string))

(defcfun ("IupTabs" iup-tabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupTabsv" iup-tabsv) :pointer
  (children :pointer))

(defcfun ("IupFlatTabs" iup-flat-tabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupFlatTabsv" iup-flat-tabsv) :pointer
  (children :pointer))

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

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Utilities
;;======================================================================================
;;--------------------------------------------------------------------------------------

; int IupStringCompare(const char* str1, const char* str2, int casesensitive, int lexicographic);

;;--------------------------------------------------------------------------------------

(defcfun ("IupSaveImageAsText" iup-save-image-as-text) :int
  (ih :pointer)
  (file_name :string)
  (format :string)
  (name :string))

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

(defcfun ("IupConvertXYToPos" iup-convert-xyto-pos) :int
  (ih :pointer)
  (x :int)
  (y :int))

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

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Pre-defined dialogs
;;======================================================================================
;;--------------------------------------------------------------------------------------

(defcfun ("IupFileDlg" iup-file-dlg) :pointer)

(defcfun ("IupMessageDlg" iup-message-dlg) :pointer)

(defcfun ("IupColorDlg" iup-color-dlg) :pointer)

(defcfun ("IupFontDlg" iup-font-dlg) :pointer)

(defcfun ("IupProgressDlg" iup-progress-dlg) :pointer)

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetFile" iup-get-file) :int
  (arq :string))

(defcfun ("IupMessage" message) :void
  (title :string)
  (msg :string))

(defcfun ("IupMessagef" iup-messagef) :void
  (title :string)
  (format :string)
  &rest)

; void IupMessageError(Ihandle* parent, const char* message);
; int IupMessageAlarm(Ihandle* parent, const char* title, const char *message, const char *buttons);

(defcfun ("IupAlarm" iup-alarm) :int
  (title :string)
  (msg :string)
  (b1 :string)
  (b2 :string)
  (b3 :string))

(defcfun ("IupScanf" iup-scanf) :int
  (format :string)
  &rest)

(defcfun ("IupListDialog" iup-list-dialog) :int
  (type :int)
  (title :string)
  (size :int)
  (list :pointer)
  (op :int)
  (max_col :int)
  (max_lin :int)
  (marks :pointer))

(defcfun ("IupGetText" iup-get-text) :int
  (title :string)
  (text :string))

(defcfun ("IupGetColor" iup-get-color) :int
  (x :int)
  (y :int)
  (r :pointer)
  (g :pointer)
  (b :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetParam" iup-get-param) :int
  (title :string)
  (action :pointer)
  (user_data :pointer)
  (format :string)
  &rest)

(defcfun ("IupGetParamv" iup-get-paramv) :int
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

(defcfun ("IupLayoutDialog" iup-layout-dialog) :pointer
  (dialog :pointer))

(defcfun ("IupElementPropertiesDialog" iup-element-properties-dialog) :pointer
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
