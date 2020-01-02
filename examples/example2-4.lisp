(in-package #:iup/examples)

(defun example2-4 ()
  (unwind-protect
	  (progn
      (iup:start)
      (let* ((b (iup:button "OK"))
             (l (iup:label "Hello world from IUP."))
             (v (iup:vbox l b))
             (d (iup:dialog v)))
        (setf (iup:attribute d :title) "Hello World 4")
        (iup:set-callback b "ACTION"
          (iup:iup-lambda-callback ()
            (iup:message "Hello World Message" "Hello world from IUP.")
            :close))
        (iup:show-xy d :center :center))
      (iup:main-loop))
    (iup:stop)))

