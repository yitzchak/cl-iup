;;;; iup-cffi.lisp

(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetAttribute" set-attribute) :void
  (ih :pointer)
  (name :string)
  (value :pointer))

(defcfun ("IupSetStrAttribute" set-str-attribute) :void
  (ih :pointer)
  (name :string)
  (value :string))

(defcfun ("IupSetAttributeId" set-attribute-id) :void
  (ih :pointer)
  (name :string)
  (id :int)
  (value :pointer))

(defcfun ("IupSetStrAttributeId" set-str-attribute-id) :void
  (ih :pointer)
  (name :string)
  (id :int)
  (value :string))

(defcfun ("IupSetAttributeId2" set-attribute-id2) :void
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int)
  (value :pointer))

(defcfun ("IupSetStrAttributeId2" set-str-attribute-id2) :void
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int)
  (value :string))

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetInt" set-int-attribute) :void
  (ih :pointer)
  (name :string)
  (value :int))

(defcfun ("IupSetDouble" set-double-attribute) :void
  (ih :pointer)
  (name :string)
  (value :double))

(defcfun ("IupSetIntId" set-int-attribute-id) :void
  (ih :pointer)
  (name :string)
  (id :int)
  (value :int))

(defcfun ("IupSetDoubleId" set-double-attribute-id) :void
  (ih :pointer)
  (name :string)
  (id :int)
  (value :double))

(defcfun ("IupSetIntId2" set-int-attribute-id2) :void
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int)
  (value :int))

(defcfun ("IupSetDoubleId2" set-double-attribute-id2) :void
  (ih :pointer)
  (name :string)
  (lin :int)
  (col :int)
  (value :double))


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

; void      IupSetStrf        (Ihandle* ih, const char* name, const char* format, ...);
; void      IupSetFloat       (Ihandle* ih, const char* name, float value);
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

; void  IupSetStrfId(Ihandle* ih, const char* name, int id, const char* format, ...);
; void  IupSetFloatId(Ihandle* ih, const char* name, int id, float value);
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

; void  IupSetStrfId2(Ihandle* ih, const char* name, int lin, int col, const char* format, ...);
; void  IupSetFloatId2(Ihandle* ih, const char* name, int lin, int col, float value);
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

(defgeneric (setf attribute) (value ih name &rest ids))

(defmethod (setf attribute) ((value string) ih name &rest ids)
  (let ((n (format nil "~:@(~A~)" name)))
    (ecase (length ids)
      (0 (set-str-attribute ih n value))
      (1 (apply #'set-str-attribute-id ih n value ids))
      (2 (apply #'set-str-attribute-id2 ih n value ids)))))

(defmethod (setf attribute) ((value integer) ih name &rest ids)
  (let ((n (format nil "~:@(~A~)" name)))
    (ecase (length ids)
      (0 (set-int-attribute ih n value))
      (1 (apply #'set-int-attribute-id ih n value ids))
      (2 (apply #'set-int-attribute-id2 ih n value ids)))))

(defmethod (setf attribute) ((value float) ih name &rest ids)
  (let ((n (format nil "~:@(~A~)" name)))
    (ecase (length ids)
      (0 (set-double-attribute ih n value))
      (1 (apply #'set-double-attribute-id ih n value ids))
      (2 (apply #'set-double-attribute-id2 ih n value ids)))))

