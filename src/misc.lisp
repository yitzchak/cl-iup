(in-package #:iup)

; int       IupExecute(const char *filename, const char* parameters);
; int       IupExecuteWait(const char *filename, const char* parameters);

(defcfun ("IupHelp" iup-help) :int
  (url :string))

; void      IupLog(const char* type, const char* format, ...);


