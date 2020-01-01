;;;; iup.asd

(asdf:defsystem #:cl-iup
  :description "Common Lisp bindings for IUP."
  :author "Tarn W. Burton"
  :license "MIT"
  :version "0.1"
  :defsystem-depends-on (:cffi-grovel)
  :depends-on (#:cffi #:iterate)
  :components
    ((:module src
      :serial t
      :components
        ((:file "packages")
         (:cffi-grovel-file "grovel")
         (:file "system")
         (:file "attributes")
         (:file "events")
         (:file "dialogs")
         (:file "layout-composition")
         (:file "container-controls")
         (:file "standard-controls")
         (:file "control-management")
         (:file "led")
         (:file "images")
         (:file "keyboard")
         (:file "menus")
         (:file "handle-names")
         (:file "string-names")
	       (:file "misc")
         (:file "iup")))))

(asdf:defsystem #:cl-iup/examples
  :description "Examples for cl-iup."
  :author "Tarn W. Burton"
  :license "MIT"
  :version "0.1"
  :depends-on (#:cl-iup)
  :components
    ((:module examples
      :serial t
      :components
        ((:file "packages")
         (:file "example2-1")
         (:file "example2-2")
         (:file "example2-3")
         (:file "example2-4")
         (:file "example2-5")))))

