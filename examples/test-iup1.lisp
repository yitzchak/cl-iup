(ql:quickload "iup")

(defpackage #:test-iup
  (:use :cl)
  (:export :main-test))

(in-package #:test-iup)

(iup:iup-defcallback msg-cb ()
  (iup:message "TestMSG"
    (format nil "Hello, IUP!~%Version: ~A~%~t(~A)"
      (iup:version)
      (iup:version-date)))
  :default))

(defparameter *dialog* nil)
(defparameter *quit-btn* nil)
(defparameter *vbox* nil)
(defparameter *msg-btn* nil)
(defparameter *list* nil)
(defparameter *but3* nil)

(defun main-test ()
  (iup:with-iup
    (setf *quit-btn*  (iup:IupButton "Close" ""))
    (iup:IupSetCallback *quit-btn* "ACTION"
		    (iup:iup-lambda-callback () :close))
    
    (setf *msg-btn*  (iup:IupButton "IUP Version" ""))
    (iup:IupSetCallback *msg-btn* "ACTION" msg-cb)

    (setf *list* (iup:IupList "list_act"))
    (iup:IupSetAttributes
     *list* 
     "1=Gold, 2=Silver, 3=Bronze, 4=Tecgraf, 5=None, XXX_SPACING=4, VALUE=4, EXPAND=YES")

    (setf *but3*  (iup:iup-set-attributes
		   (iup:IupButton "Show selected item" "")
		   :expand "VERTICAL"
		   :flat "YES"))
    (iup:IupSetCallback
     *but3* "ACTION" 
     (iup:iup-lambda-callback
      () (progn
	   (iup:message "Item:"
		       (iup:IupGetAttribute
			*list*
			(iup:IupGetAttribute
			 *list* "VALUE")))
	   :default)))
    

    (setf *vbox*
	  (iup:iup-vbox
	   (iup:iup-set-attributes (iup:IupLabel "Test IUP")
			       :EXPAND "HORIZONTAL"
			       :ALIGNMENT :ACENTER)
	   *list*
	   (iup:iup-hbox *but3*)
	   (iup:iup-hbox *msg-btn* *quit-btn*)))
    
    (iup:iup-set-attributes *vbox* :ALIGNMENT "ACENTER" :MARGIN="1x1" :GAP 5)
    
    (setf *dialog* (iup:IupDialog *vbox*))
    (iup:IupSetAttributeHandle *dialog* "DEFAULTESC" *quit-btn*)
    (setf (iup:iup-attribute *dialog* "TITLE") "Test IupDialog!!!")
    (iup:IupSetAttributes *dialog* "RESIZE=YES")
    
    (iup:IupShow *dialog*)
    (msg-cb)
    (iup:IupMainloop)
    (iup:IupDestroy *dialog*)))

(main-test)
(sb-ext:quit)
;;(sb-ext:save-lisp-and-die "test-iup" :toplevel #'main-test :executable t)
