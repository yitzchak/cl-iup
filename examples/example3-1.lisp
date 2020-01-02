(in-package #:iup/examples)

(defun example3-1 ()
  (unwind-protect
	  (progn
      (iup:start)
      (let* ((multitext (iup:text))
             (vbox (iup:vbox multitext))
             (dlg (iup:dialog vbox)))
        (setf (iup:attribute multitext :multiline) "YES")
        (setf (iup:attribute multitext :expand) "YES")
        (setf (iup:attribute dlg :title) "Simple Notepad")
        (setf (iup:attribute dlg :size) "QUARTERxQUARTER")
        (iup:show-xy dlg :center :center)
        (iup:reset-attribute dlg :usersize))
      (iup:main-loop))
    (iup:stop)))

