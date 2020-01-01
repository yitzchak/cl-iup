;;;; iup-cffi.lisp

(in-package #:iup)

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
;;======================================================================================
;; Elements
;;======================================================================================
;;--------------------------------------------------------------------------------------


;;--------------------------------------------------------------------------------------
;;======================================================================================
;; Utilities
;;======================================================================================
;;--------------------------------------------------------------------------------------

; int IupStringCompare(const char* str1, const char* str2, int casesensitive, int lexicographic);


