(in-package #:iup/examples)

(defun example2-2 ()
  (unwind-protect
	  (progn
      (iup:start)
      (let ((d (iup:dialog (iup:vbox (iup:label "Hello world from IUP.")))))
        (setf (iup:attribute d :title) "Hello World 2")
        (iup:show-xy d :center :center))
      (iup:main-loop))
    (iup:stop)))

