(in-package #:iup)

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


