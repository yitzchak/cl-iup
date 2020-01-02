;;;; iup-cffi.lisp

(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetAttribute" set-attribute) :void
  (ih iup-handle)
  (name iup-name)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttribute" set-str-attribute) :void
  (ih iup-handle)
  (name iup-name)
  (value :string))

(cffi:defcfun ("IupSetAttributeId" set-attribute-id) :void
  (ih iup-handle)
  (name iup-name)
  (id :int)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttributeId" set-str-attribute-id) :void
  (ih iup-handle)
  (name iup-name)
  (id :int)
  (value :string))

(cffi:defcfun ("IupSetAttributeId2" set-attribute-id2) :void
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :pointer))

(cffi:defcfun ("IupSetStrAttributeId2" set-str-attribute-id2) :void
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :string))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSetInt" set-int-attribute) :void
  (ih iup-handle)
  (name iup-name)
  (value :int))

(cffi:defcfun ("IupSetDouble" set-double-attribute) :void
  (ih iup-handle)
  (name iup-name)
  (value :double))

(cffi:defcfun ("IupSetIntId" set-int-attribute-id) :void
  (ih iup-handle)
  (name iup-name)
  (id :int)
  (value :int))

(cffi:defcfun ("IupSetDoubleId" set-double-attribute-id) :void
  (ih iup-handle)
  (name iup-name)
  (id :int)
  (value :double))

(cffi:defcfun ("IupSetIntId2" set-int-attribute-id2) :void
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :int))

(cffi:defcfun ("IupSetDoubleId2" set-double-attribute-id2) :void
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int)
  (value :double))

(cffi:defcfun ("IupResetAttribute" reset-attribute) :void
  (ih iup-handle)
  (name iup-name))

(cffi:defcfun ("IupGetAllAttributes" iup-get-all-attributes) :int
  (ih iup-handle)
  (names :pointer)
  (n :int))

; void      IupCopyAttributes(Ihandle* src_ih, Ihandle* dst_ih);

(cffi:defcfun ("IupSetAtt" iup-set-att) :pointer
  (handle_name :string)
  (ih iup-handle)
  (name iup-name)
  &rest)

(cffi:defcfun ("IupSetAttributes" iup-set-attributes) :pointer
  (ih iup-handle)
  (str :string))

(cffi:defcfun ("IupGetAttributes" iup-get-attributes) :string
  (ih iup-handle))

;;--------------------------------------------------------------------------------------

; void      IupSetStrf        (Ihandle* ih, const char* name, const char* format, ...);
; void      IupSetFloat       (Ihandle* ih, const char* name, float value);
; void      IupSetRGB         (Ihandle* ih, const char* name, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetAttribute" iup-get-attribute) :string
  (ih iup-handle)
  (name iup-name))

(cffi:defcfun ("IupGetInt" iup-get-int) :int
  (ih iup-handle)
  (name iup-name))

(cffi:defcfun ("IupGetInt2" iup-get-int2) :int
  (ih iup-handle)
  (name iup-name))

(cffi:defcfun ("IupGetIntInt" iup-get-int-int) :int
  (ih iup-handle)
  (name iup-name)
  (i1 (:pointer :int))
  (i2 (:pointer :int)))

(cffi:defcfun ("IupGetFloat" iup-get-float) :float
  (ih iup-handle)
  (name iup-name))

; double    IupGetDouble(Ihandle* ih, const char* name);
; void      IupGetRGB      (Ihandle* ih, const char* name, unsigned char *r, unsigned char *g, unsigned char *b);

;;--------------------------------------------------------------------------------------

; void  IupSetStrfId(Ihandle* ih, const char* name, int id, const char* format, ...);
; void  IupSetFloatId(Ihandle* ih, const char* name, int id, float value);
; void  IupSetRGBId(Ihandle* ih, const char* name, int id, unsigned char r, unsigned char g, unsigned char b);

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetAttributeId" iup-get-attribute-id) :string
  (ih iup-handle)
  (name iup-name)
  (id :int))

(cffi:defcfun ("IupGetIntId" iup-get-int-id) :int
  (ih iup-handle)
  (name iup-name)
  (id :int))

(cffi:defcfun ("IupGetFloatId" iup-get-float-id) :float
  (ih iup-handle)
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
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int))

(cffi:defcfun ("IupGetIntId2" iup-get-int-id2) :int
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int))

(cffi:defcfun ("IupGetFloatId2" iup-get-float-id2) :float
  (ih iup-handle)
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
  (ih iup-handle)
  (name iup-name)
  (ih_named iup-handle))

(cffi:defcfun ("IupGetAttributeHandle" get-attribute-handle) iup-handle
  (ih iup-handle)
  (name iup-name))

(cffi:defcfun ("IupSetAttributeHandleId" set-attribute-handle-id) :void
  (ih iup-handle)
  (name iup-name)
  (id :int)
  (ih_named iup-handle))

(cffi:defcfun ("IupGetAttributeHandleId" get-attribute-handle-id) iup-handle
  (ih iup-handle)
  (name iup-name)
  (id :int))

(cffi:defcfun ("IupSetAttributeHandleId2" set-attribute-handle-id2) :void
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int)
  (ih_named iup-handle))

(cffi:defcfun ("IupGetAttributeHandleId2" get-attribute-handle-id2) iup-handle
  (ih iup-handle)
  (name iup-name)
  (lin :int)
  (col :int))

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
    (1 (set-attribute-id ih name (car ids) value))
    (2 (set-attribute-id2 ih name (car ids) (cadr ids) value))))

(defmethod (setf attribute) ((value string) ih name &rest ids)
  (ecase (length ids)
    (0 (set-str-attribute ih name value))
    (1 (set-str-attribute-id ih name (car ids) value))
    (2 (set-str-attribute-id2 ih name (car ids) (cadr ids) value))))

(defmethod (setf attribute) ((value integer) ih name &rest ids)
  (ecase (length ids)
    (0 (set-int-attribute ih name value))
    (1 (set-int-attribute-id ih name (car ids) value))
    (2 (set-int-attribute-id2 ih name (car ids) (cadr ids) value))))

(defmethod (setf attribute) ((value float) ih name &rest ids)
  (ecase (length ids)
    (0 (set-double-attribute ih name value))
    (1 (set-double-attribute-id ih name (car ids) value))
    (2 (set-double-attribute-id2 ih name (car ids) (cadr ids) value))))

(defmethod (setf attribute) ((value control) ih name &rest ids)
  (ecase (length ids)
    (0 (set-attribute-handle ih name value))
    (1 (set-attribute-handle-id ih name (car ids) value))
    (2 (set-attribute-handle-id2 ih name (car ids) (cadr ids) value))))


