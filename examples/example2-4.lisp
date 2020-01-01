(ql:quickload :iup)

(iup:iup-defcallback btn-exit-cb ()
  (iup:message "Hello World Message" "Hello world from IUP.")
  :close)

(unwind-protect
	(progn
    (iup:start)
    (let* ((b (iup:button "OK"))
           (l (iup:label "Hello world from IUP."))
           (v (iup:vbox l b))
           (d (iup:dialog v)))
      (iup:set-attribute d "TITLE" "Hello World 3")
      (iup:set-callback b "ACTION" btn-exit-cb)
      (iup:show-xy d :center :center))
    (iup:main-loop))
  (iup:stop))

