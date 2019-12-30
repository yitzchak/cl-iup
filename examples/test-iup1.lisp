(ql:quickload "iup")

(defpackage #:test-iup
  (:use :cl)
  (:export :main-test))

(in-package #:test-iup)

(iup:iup-defcallback msg-cb ()
  (progn
    (iup/cffi:iupmessage "TestMSG"
		       (format nil "Hello, IUP!~%Version: ~A~%~t(~A)" 
			       (iup/cffi:IupVersion)
			       (iup/cffi:IupVersionDate)))
    :default))

(defparameter *dialog* nil)
(defparameter *quit-btn* nil)
(defparameter *vbox* nil)
(defparameter *msg-btn* nil)
(defparameter *list* nil)
(defparameter *but3* nil)

(defun main-test ()
  (iup:with-iup
    (setf *quit-btn*  (iup/cffi:IupButton "Close" ""))
    (iup/cffi:IupSetCallback *quit-btn* "ACTION"
		    (iup:iup-lambda-callback () :close))
    
    (setf *msg-btn*  (iup/cffi:IupButton "IUP Version" ""))
    (iup/cffi:IupSetCallback *msg-btn* "ACTION" msg-cb)

    (setf *list* (iup/cffi:IupList "list_act"))
    (iup/cffi:IupSetAttributes
     *list* 
     "1=Gold, 2=Silver, 3=Bronze, 4=Tecgraf, 5=None, XXX_SPACING=4, VALUE=4, EXPAND=YES")

    (setf *but3*  (iup:iup-set-attributes
		   (iup/cffi:IupButton "Show selected item" "")
		   :expand "VERTICAL"
		   :flat "YES"))
    (iup/cffi:IupSetCallback
     *but3* "ACTION" 
     (iup:iup-lambda-callback
      () (progn
	   (iup/cffi:IupMessage "Item:"
		       (iup/cffi:IupGetAttribute
			*list*
			(iup/cffi:IupGetAttribute
			 *list* "VALUE")))
	   :default)))
    

    (setf *vbox*
	  (iup:iup-vbox
	   (iup:iup-set-attributes (iup/cffi:IupLabel "Test IUP")
			       :EXPAND "HORIZONTAL"
			       :ALIGNMENT :ACENTER)
	   *list*
	   (iup:iup-hbox *but3*)
	   (iup:iup-hbox *msg-btn* *quit-btn*)))
    
    (iup:iup-set-attributes *vbox* :ALIGNMENT "ACENTER" :MARGIN="1x1" :GAP 5)
    
    (setf *dialog* (iup/cffi:IupDialog *vbox*))
    (iup/cffi:IupSetAttributeHandle *dialog* "DEFAULTESC" *quit-btn*)
    (setf (iup:iup-attribute *dialog* "TITLE") "Test IupDialog!!!")
    (iup/cffi:IupSetAttributes *dialog* "RESIZE=YES")
    
    (iup/cffi:IupShow *dialog*)
    (msg-cb)
    (iup/cffi:IupMainloop)
    (iup/cffi:IupDestroy *dialog*)))

(main-test)
(sb-ext:quit)
;;(sb-ext:save-lisp-and-die "test-iup" :toplevel #'main-test :executable t)
