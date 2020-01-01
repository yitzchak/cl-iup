(in-package #:iup/examples)

(defun example2-1 ()
  (unwind-protect
	  (progn
      (iup:start)
      (iup:message "Hello World 1" "Hello world from IUP."))
    (iup:stop)))

