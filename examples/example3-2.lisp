(in-package #:iup/examples)

(defun example3-2 ()
  (unwind-protect
	  (progn
      (iup:start)
      (let* ((multitext (iup:text))
             (vbox (iup:vbox multitext))
             (dlg (iup:dialog vbox))
             (item-open (iup:item "Open"))
             (item-saveas (iup:item "Save As"))
             (item-exit (iup:item "Exit"))
             (file-menu (iup:menu item-open item-saveas (iup:separator) item-exit))
             (sub1-menu (iup:submenu "File" file-menu))
             (menu (iup:menu sub1-menu)))
        (setf (iup:attribute multitext :multiline) "YES")
        (setf (iup:attribute multitext :expand) "YES")
        (setf (iup:attribute dlg :title) "Simple Notepad")
        (setf (iup:attribute dlg :size) "QUARTERxQUARTER")
        (setf (iup:attribute dlg :menu) menu)
        (iup:set-callback item-exit "ACTION"
          (iup:iup-lambda-callback ()
            :close))
        (iup:show-xy dlg :center :center)
        (iup:reset-attribute dlg :usersize))
      (iup:main-loop))
    (iup:stop)))

