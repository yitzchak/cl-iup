(in-package #:iup)

(defcfun ("IupUpdate" iup-update) :void
  (ih :pointer))

(defcfun ("IupUpdateChildren" iup-update-children) :void
  (ih :pointer))

(defcfun ("IupRedraw" iup-redraw) :void
  (ih :pointer)
  (children :int))

(defcfun ("IupMap" iup-map) :iup-status
  (ih :pointer))

(defcfun ("IupUnmap" iup-unmap) :void
  (ih :pointer))

;;--------------------------------------------------------------------------------------


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

(defcfun ("IupDestroy" iup-destroy) :void
  (ih :pointer))


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

(defcfun ("IupConvertXYToPos" iup-convert-xyto-pos) :int
  (ih :pointer)
  (x :int)
  (y :int))


