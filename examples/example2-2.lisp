(ql:quickload :iup)

(unwind-protect
	(progn
    (iup:start)
    (let ((d (iup:dialog (iup:vbox (iup:label "Hello world from IUP.")))))
      (iup:set-attribute d "TITLE" "Hello World 2")
      (iup:show-xy d :center :center))
    (iup:main-loop))
  (iup:stop))

