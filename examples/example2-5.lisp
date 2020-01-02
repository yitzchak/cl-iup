(in-package #:iup/examples)

(defun example2-5 ()
  (unwind-protect
	  (progn
      (iup:start)
      (let* ((b (iup:button "OK"))
             (l (iup:label "Hello world from IUP."))
             (v (iup:vbox l b))
             (d (iup:dialog v)))
        (setf (iup:attribute d :title) "Hello World 5")
        (iup:set-callback b "ACTION"
          (iup:iup-lambda-callback ()
            (iup:message "Hello World Message" "Hello world from IUP.")
            :close))
        (setf (iup:attribute v :alignment) "ACENTER")
        (setf (iup:attribute v :gap) 10)
        (setf (iup:attribute v :margin) "10x10")
        (iup:show-xy d :center :center))
      (iup:main-loop))
    (iup:stop)))

