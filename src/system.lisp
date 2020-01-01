(in-package #:iup)

(define-foreign-library iup
  (:unix "libiup.so")
  (t (:default "iup")))

(use-foreign-library iup)

(defmacro with-ihandle-sequence (decl &body body)
  `(let ((,(car decl) (foreign-alloc :pointer :initial-contents ,(cadr decl) :null-terminated-p t)))
     (unwind-protect
       (progn ,@body)
       (foreign-free ,(car decl)))))

(defcfun ("IupOpen" %start) :iup-status
  (argc :pointer)
  (argv :pointer))

(defun start ()
  (%start (cffi:null-pointer) (cffi:null-pointer)))

(defcfun ("IupClose" stop) :void)

(defcfun ("IupImageLibOpen" image-lib-open) :void)

;;--------------------------------------------------------------------------------------

(defcfun ("IupVersion" version) :string)

(defcfun ("IupVersionDate" version-date) :string)

(defcfun ("IupVersionNumber" version-number) :int)


