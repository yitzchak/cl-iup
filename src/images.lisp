(in-package #:iup)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupImage" iup-image) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(cffi:defcfun ("IupImageRGB" iup-image-rgb) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

(cffi:defcfun ("IupImageRGBA" iup-image-rgba) :pointer
  (width :int)
  (height :int)
  (pixmap :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupSaveImageAsText" iup-save-image-as-text) :int
  (ih iup-handle)
  (file_name :string)
  (format :string)
  (name :string))


