(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupPopup" iup-popup) :iup-status
  (ih iup-handle)
  (x :iup-position)
  (y :iup-position))

(cffi:defcfun ("IupShow" show) :iup-status
  (ih iup-handle))

(cffi:defcfun ("IupShowXY" show-xy) :iup-status
  (ih iup-handle)
  (x :iup-position)
  (y :iup-position))

(cffi:defcfun ("IupHide" iup-hide) :iup-status
  (ih iup-handle))

;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Pre-defined dialogs
;;======================================================================================
;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupFileDlg" iup-file-dlg) iup-handle)

(cffi:defcfun ("IupMessageDlg" iup-message-dlg) iup-handle)

(cffi:defcfun ("IupColorDlg" iup-color-dlg) iup-handle)

(cffi:defcfun ("IupFontDlg" iup-font-dlg) iup-handle)

(cffi:defcfun ("IupProgressDlg" iup-progress-dlg) iup-handle)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetFile" iup-get-file) :int
  (arq :string))

(cffi:defcfun ("IupMessage" message) :void
  (title :string)
  (msg :string))

(cffi:defcfun ("IupMessagef" iup-messagef) :void
  (title :string)
  (format :string)
  &rest)

; void IupMessageError(Ihandle* parent, const char* message);
; int IupMessageAlarm(Ihandle* parent, const char* title, const char *message, const char *buttons);

(cffi:defcfun ("IupAlarm" iup-alarm) :int
  (title :string)
  (msg :string)
  (b1 :string)
  (b2 :string)
  (b3 :string))

(cffi:defcfun ("IupScanf" iup-scanf) :int
  (format :string)
  &rest)

(cffi:defcfun ("IupListDialog" iup-list-dialog) :int
  (type :int)
  (title :string)
  (size :int)
  (list :pointer)
  (op :int)
  (max_col :int)
  (max_lin :int)
  (marks :pointer))

(cffi:defcfun ("IupGetText" iup-get-text) :int
  (title :string)
  (text :string))

(cffi:defcfun ("IupGetColor" iup-get-color) :int
  (x :int)
  (y :int)
  (r :pointer)
  (g :pointer)
  (b :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetParam" iup-get-param) :int
  (title :string)
  (action :pointer)
  (user_data :pointer)
  (format :string)
  &rest)

(cffi:defcfun ("IupGetParamv" iup-get-paramv) :int
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

(cffi:defcfun ("IupLayoutDialog" iup-layout-dialog) iup-handle
  (dialog :pointer))

(cffi:defcfun ("IupElementPropertiesDialog" iup-element-properties-dialog) iup-handle
  (elem :pointer))

; Ihandle* IupGlobalsDialog(void);


