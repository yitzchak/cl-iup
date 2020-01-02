;;;; iup-cffi.lisp

(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetAttribute" set-attribute) :void
  (ih :pointer)
  (name iup-name)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttribute" set-str-attribute) :void
  (ih :pointer)
  (name iup-name)
  (value :string))

(cffi:defcfun ("IupSetAttributeId" set-attribute-id) :void
  (ih :pointer)
  (name iup-name)
  (id :int)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttributeId" set-str-attribute-id) :void
  (ih :pointer)
  (name iup-name)
  (id :int)
  (value :string))

(cffi:defcfun ("IupSetAttributeId2" set-attribute-id2) :void
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttributeId2" set-str-attribute-id2) :void
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :string))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetInt" set-int-attribute) :void
  (ih :pointer)
  (name iup-name)
  (value :int))

(cffi:defcfun ("IupSetDouble" set-double-attribute) :void
  (ih :pointer)
  (name iup-name)
  (value :double))

(cffi:defcfun ("IupSetIntId" set-int-attribute-id) :void
  (ih :pointer)
  (name iup-name)
  (id :int)
  (value :int))

(cffi:defcfun ("IupSetDoubleId" set-double-attribute-id) :void
  (ih :pointer)
  (name iup-name)
  (id :int)
  (value :double))

(cffi:defcfun ("IupSetIntId2" set-int-attribute-id2) :void
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :int))

(cffi:defcfun ("IupSetDoubleId2" set-double-attribute-id2) :void
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :double))

(cffi:defcfun ("IupResetAttribute" reset-attribute) :void
  (ih :pointer)
  (name iup-name))

(cffi:defcfun ("IupGetAllAttributes" iup-get-all-attributes) :int
  (ih :pointer)
  (names :pointer)
  (n :int))

; void      IupCopyAttributes(Ihandle* src_ih, Ihandle* dst_ih);

(cffi:defcfun ("IupSetAtt" iup-set-att) :pointer
  (handle_name :string)
  (ih :pointer)
  (name iup-name)
  &rest)

(cffi:defcfun ("IupSetAttributes" iup-set-attributes) :pointer
  (ih :pointer)
  (str :string))

(cffi:defcfun ("IupGetAttributes" iup-get-attributes) :string
  (ih :pointer))

;;--------------------------------------------------------------------------------------

; void      IupSetStrf        (Ihandle* ih, const char* name, const char* format, ...);
; void      IupSetFloat       (Ihandle* ih, const char* name, float value);
; void      IupSetRGB         (Ihandle* ih, const char* name, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetAttribute" iup-get-attribute) :string
  (ih :pointer)
  (name iup-name))

(cffi:defcfun ("IupGetInt" iup-get-int) :int
  (ih :pointer)
  (name iup-name))

(cffi:defcfun ("IupGetInt2" iup-get-int2) :int
  (ih :pointer)
  (name iup-name))

(cffi:defcfun ("IupGetIntInt" iup-get-int-int) :int
  (ih :pointer)
  (name iup-name)
  (i1 (:pointer :int))
  (i2 (:pointer :int)))

(cffi:defcfun ("IupGetFloat" iup-get-float) :float
  (ih :pointer)
  (name iup-name))

; double    IupGetDouble(Ihandle* ih, const char* name);
; void      IupGetRGB      (Ihandle* ih, const char* name, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

; void  IupSetStrfId(Ihandle* ih, const char* name, int id, const char* format, ...);
; void  IupSetFloatId(Ihandle* ih, const char* name, int id, float value);
; void  IupSetRGBId(Ihandle* ih, const char* name, int id, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetAttributeId" iup-get-attribute-id) :string
  (ih :pointer)
  (name iup-name)
  (id :int))

(cffi:defcfun ("IupGetIntId" iup-get-int-id) :int
  (ih :pointer)
  (name iup-name)
  (id :int))

(cffi:defcfun ("IupGetFloatId" iup-get-float-id) :float
  (ih :pointer)
  (name iup-name)
  (id :int))

; double IupGetDoubleId(Ihandle* ih, const char* name, int id);
; void   IupGetRGBId(Ihandle* ih, const char* name, int id, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

; void  IupSetStrfId2(Ihandle* ih, const char* name, int lin, int col, const char* format, ...);
; void  IupSetFloatId2(Ihandle* ih, const char* name, int lin, int col, float value);
; void  IupSetRGBId2(Ihandle* ih, const char* name, int lin, int col, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetAttributeId2" iup-get-attribute-id2) :string
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int))

(cffi:defcfun ("IupGetIntId2" iup-get-int-id2) :int
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int))

(cffi:defcfun ("IupGetFloatId2" iup-get-float-id2) :float
  (ih :pointer)
  (name iup-name)
  (lin :int)
  (col :int))

; double IupGetDoubleId2(Ihandle* ih, const char* name, int lin, int col);
; void   IupGetRGBId2(Ihandle* ih, const char* name, int lin, int col, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetGlobal" iup-set-global) :void
  (name iup-name)
  (value :string))

(cffi:defcfun ("IupStoreGlobal" iup-store-global) :void
  (name iup-name)
  (value :string))

(cffi:defcfun ("IupGetGlobal" iup-get-global) :string
  (name iup-name))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetAttributeHandle" set-attribute-handle) :void
  (ih :pointer)
  (name iup-name)
  (ih_named :pointer))

(cffi:defcfun ("IupGetAttributeHandle" iup-get-attribute-handle) :pointer
  (ih :pointer)
  (name iup-name))

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

(defgeneric (setf attribute) (value ih name &rest ids))

(defmethod (setf attribute) (value ih name &rest ids)
  (ecase (length ids)
    (0 (set-attribute ih name value))
    (1 (apply #'set-attribute-id ih name value ids))
    (2 (apply #'set-attribute-id2 ih name value ids))))

(defmethod (setf attribute) ((value string) ih name &rest ids)
  (ecase (length ids)
    (0 (set-str-attribute ih name value))
    (1 (apply #'set-str-attribute-id ih name value ids))
    (2 (apply #'set-str-attribute-id2 ih name value ids))))

(defmethod (setf attribute) ((value integer) ih name &rest ids)
  (ecase (length ids)
    (0 (set-int-attribute ih name value))
    (1 (apply #'set-int-attribute-id ih name value ids))
    (2 (apply #'set-int-attribute-id2 ih name value ids))))

(defmethod (setf attribute) ((value float) ih name &rest ids)
  (ecase (length ids)
    (0 (set-double-attribute ih name value))
    (1 (apply #'set-double-attribute-id ih name value ids))
    (2 (apply #'set-double-attribute-id2 ih name value ids))))

