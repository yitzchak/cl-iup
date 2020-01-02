(in-package #:iup)

(cffi:defcfun ("IupUpdate" iup-update) :void
  (ih :pointer))

(cffi:defcfun ("IupUpdateChildren" iup-update-children) :void
  (ih :pointer))

(cffi:defcfun ("IupRedraw" iup-redraw) :void
  (ih :pointer)
  (children :int))

(cffi:defcfun ("IupMap" iup-map) :iup-status
  (ih :pointer))

(cffi:defcfun ("IupUnmap" iup-unmap) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------


;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupGetClassName" iup-get-class-name) :string
  (ih :pointer))

(cffi:defcfun ("IupGetClassType" iup-get-class-type) :string
  (ih :pointer))

(cffi:defcfun ("IupGetAllClasses" iup-get-all-classes) :int
  (names :pointer)
  (n :int))

(cffi:defcfun ("IupGetClassAttributes" iup-get-class-attributes) :int
  (classname :string)
  (names :pointer)
  (n :int))

(cffi:defcfun ("IupGetClassCallbacks" iup-get-class-callbacks) :int
  (classname :string)
  (names :pointer)
  (n :int))

(cffi:defcfun ("IupSaveClassAttributes" iup-save-class-attributes) :void
  (ih :pointer))

(cffi:defcfun ("IupCopyClassAttributes" iup-copy-class-attributes) :void
  (src_ih :pointer)
  (dst_ih :pointer))

(cffi:defcfun ("IupSetClassDefaultAttribute" iup-set-class-default-attribute) :void
  (classname :string)
  (name :string)
  (value :string))

(cffi:defcfun ("IupClassMatch" iup-class-match) :int
  (ih :pointer)
  (classname :string))

(cffi:defcfun ("IupDestroy" iup-destroy) :void
  (ih :pointer))


;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupCreate" iup-create) :pointer
  (classname :string))

(cffi:defcfun ("IupCreatev" iup-createv) :pointer
  (classname :string)
  (params :pointer))

(cffi:defcfun ("IupCreatep" iup-createp) :pointer
  (classname :string)
  (first :pointer)
  &rest)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupConvertXYToPos" iup-convert-xyto-pos) :int
  (ih :pointer)
  (x :int)
  (y :int))


