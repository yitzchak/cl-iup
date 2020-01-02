(in-package #:iup)

(cffi:define-foreign-library iup
  (:unix "libiup.so")
  (t (:default "iup")))

(cffi:use-foreign-library iup)

(defmacro with-ihandle-sequence (decl &body body)
  `(let ((,(car decl) (cffi:foreign-alloc :pointer :initial-contents ,(cadr decl) :null-terminated-p t)))
     (unwind-protect
       (progn ,@body)
       (cffi:foreign-free ,(car decl)))))

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
