(in-package #:iup)

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

(defcfun ("IupSaveImageAsText" iup-save-image-as-text) :int
  (ih :pointer)
  (file_name :string)
  (format :string)
  (name :string))


