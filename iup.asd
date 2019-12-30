;;;; iup.asd

(asdf:defsystem #:iup
  :description "Common Lisp bindings for IUP."
  :author "Klimenko Serj"
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
	       (:file "iup-cffi")
         (:file "iup")))))

