(in-package #:iup)

(cffi:defcfun ("IupFill" filler) :pointer)

(cffi:defcfun ("IupSpace" spacer) :pointer)

;;--------------------------------------------------------------------------------------

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupCbox" iup-cbox) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupCboxv" %cboxv) :pointer
  (children :pointer))

(defun cbox (&rest children)
  (with-ihandle-sequence (a children)
    (%cboxv a)))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupGridBox" iup-grid-box) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupGridBoxv" %grid-boxv) :pointer
  (children :pointer))

(defun grid-box (&rest children)
  (with-ihandle-sequence (a children)
    (%grid-boxv a)))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupHbox" iup-hbox) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupHboxv" %hboxv) :pointer
  (children :pointer))

(defun hbox (&rest children)
  (with-ihandle-sequence (a children)
    (%hboxv a)))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupVbox" %vbox) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupVboxv" %vboxv) :pointer
  (children :pointer))

(defun vbox (&rest children)
  (with-ihandle-sequence (a children)
    (%vboxv a)))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupZbox" iup-zbox) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupZboxv" %zboxv) :pointer
  (children :pointer))

(defun zbox (&rest children)
  (with-ihandle-sequence (a children)
    (%zboxv a)))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupRadio" radio) :pointer
  (child :pointer))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupNormalizer" iup-normalizer) :pointer
;   (ih_first :pointer)
;   &rest)

(cffi:defcfun ("IupNormalizerv" %normalizerv) :pointer
  (ih_list :pointer))

(defun normalizer (&rest children)
  (with-ihandle-sequence (a children)
    (%normalizerv a)))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupFrame" frame) :pointer
  (child :pointer))

(cffi:defcfun ("IupFlatFrame" flat-frame) :pointer
  (child :pointer))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupTabs" iup-tabs) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupTabsv" %tabsv) :pointer
  (children :pointer))

(defun tabs (&rest children)
  (with-ihandle-sequence (a children)
    (%tabsv a)))

; Don't import variadic b.c. it is not needed
; (cffi:defcfun ("IupFlatTabs" iup-flat-tabs) :pointer
;   (child :pointer)
;   &rest)

(cffi:defcfun ("IupFlatTabsv" %flat-tabsv) :pointer
  (children :pointer))

(defun flat-tabs (&rest children)
  (with-ihandle-sequence (a children)
    (%flat-tabsv a)))

(cffi:defcfun ("IupBackgroundBox" background-box) :pointer
  (child :pointer))

(cffi:defcfun ("IupScrollBox" scroll-box) :pointer
  (child :pointer))

(cffi:defcfun ("IupFlatScrollBox" flat-scroll-box) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupDetachBox" detach-box) :pointer
  (child :pointer))

(cffi:defcfun ("IupExpander" expander) :pointer
  (child :pointer))

(cffi:defcfun ("IupSbox" sbox) :pointer
  (child :pointer))

(cffi:defcfun ("IupSplit" split) :pointer
  (child1 :pointer)
  (child2 :pointer))

