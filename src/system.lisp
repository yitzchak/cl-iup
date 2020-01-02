(in-package #:iup)

(cffi:define-foreign-library iup
  (:unix "libiup.so")
  (t (:default "iup")))

(cffi:use-foreign-library iup)

;;-------------

(cffi:define-foreign-type iup-name ()
  ()
  (:actual-type :string)
  (:simple-parser iup-name))

(defmethod cffi:translate-to-foreign (object (type iup-name))
  (declare (ignore type))
  (cffi:foreign-string-alloc (format nil "~:@(~A~)" object)))

(defmethod cffi:free-translated-object (pointer (type iup-name) param)
  (declare (ignore param))
  (cffi:foreign-string-free pointer))

;(defmethod cffi:translate-from-foreign (handle (type ui-type))
;  (declare (ignore type))
;  (gethash handle *controls*))

;;--------------------------------------------------------------

(defstruct control
  (handle (cffi:null-pointer)))

(cffi:define-foreign-type iup-handle ()
  ()
  (:actual-type :pointer)
  (:simple-parser iup-handle))

(defmethod cffi:translate-to-foreign (object (type iup-handle))
  (declare (ignore type))
  (control-handle object))

(defmethod cffi:translate-from-foreign (object (type iup-handle))
  (declare (ignore type))
  (make-control :handle object))

;;----------------------------------------------------

(cffi:define-foreign-type iup-handles ()
  ()
  (:actual-type :pointer)
  (:simple-parser iup-handles))

(defmethod cffi:translate-to-foreign (object (type iup-handles))
  (declare (ignore type))
  (cffi:foreign-alloc :pointer :initial-contents (mapcar #'control-handle object) :null-terminated-p t))

(defmethod cffi:free-translated-object (pointer (type iup-handles) param)
  (declare (ignore param))
  (cffi:foreign-free pointer))

;;-------------------------------------------------

(cffi:defcfun ("IupOpen" %start) :iup-status
  (argc :pointer)
  (argv :pointer))

(defun start ()
  (%start (cffi:null-pointer) (cffi:null-pointer)))

(cffi:defcfun ("IupClose" stop) :void)

(cffi:defcfun ("IupImageLibOpen" image-lib-open) :void)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupVersion" version) :string)

(cffi:defcfun ("IupVersionDate" version-date) :string)

(cffi:defcfun ("IupVersionNumber" version-number) :int)


