(in-package #:iup)

;;--------------------------------------------------------------------------------------

(defcfun ("IupSetLanguage" iup-set-language) :void
  (lng :string))

(defcfun ("IupGetLanguage" iup-get-language) :string)

; void      IupSetLanguageString(const char* name, const char* str);
; void      IupStoreLanguageString(const char* name, const char* str);
; char*     IupGetLanguageString(const char* name);
; void      IupSetLanguagePack(Ihandle* ih);


