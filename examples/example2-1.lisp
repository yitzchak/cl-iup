(ql:quickload :iup)

(unwind-protect
	(progn
    (iup:start)
    (iup:message "Hello World 1" "Hello world from IUP."))
  (iup:stop))

