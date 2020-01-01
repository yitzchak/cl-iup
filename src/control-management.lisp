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


