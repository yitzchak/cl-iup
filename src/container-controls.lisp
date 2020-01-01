(in-package #:iup)

(defcfun ("IupFill" iup-fill) :pointer)

(defcfun ("IupSpace" iup-space) :pointer)

;;--------------------------------------------------------------------------------------

; Don't import variadic b.c. it is not needed
; (defcfun ("IupCbox" iup-cbox) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupCboxv" %cboxv) :pointer
  (children :pointer))

(defun cbox (&rest children)
  (with-ihandle-sequence (a children)
    (%cboxv a)))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupGridBox" iup-grid-box) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupGridBoxv" %grid-boxv) :pointer
  (children :pointer))

(defun grid-box (&rest children)
  (with-ihandle-sequence (a children)
    (%grid-boxv a)))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupHbox" iup-hbox) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupHboxv" %hboxv) :pointer
  (children :pointer))

(defun hbox (&rest children)
  (with-ihandle-sequence (a children)
    (%hboxv a)))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupVbox" %vbox) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupVboxv" %vboxv) :pointer
  (children :pointer))

(defun vbox (&rest children)
  (with-ihandle-sequence (a children)
    (%vboxv a)))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupZbox" iup-zbox) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupZboxv" %zboxv) :pointer
  (children :pointer))

(defun zbox (&rest children)
  (with-ihandle-sequence (a children)
    (%zboxv a)))

;;--------------------------------------------------------------------------------------

(defcfun ("IupRadio" radio) :pointer
  (child :pointer))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupNormalizer" iup-normalizer) :pointer
;   (ih_first :pointer)
;   &rest)

(defcfun ("IupNormalizerv" %normalizerv) :pointer
  (ih_list :pointer))

(defun normalizer (&rest children)
  (with-ihandle-sequence (a children)
    (%normalizerv a)))

;;--------------------------------------------------------------------------------------

(defcfun ("IupFrame" frame) :pointer
  (child :pointer))

(defcfun ("IupFlatFrame" flat-frame) :pointer
  (child :pointer))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupTabs" iup-tabs) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupTabsv" %tabsv) :pointer
  (children :pointer))

(defun tabs (&rest children)
  (with-ihandle-sequence (a children)
    (%tabsv a)))

; Don't import variadic b.c. it is not needed
; (defcfun ("IupFlatTabs" iup-flat-tabs) :pointer
;   (child :pointer)
;   &rest)

(defcfun ("IupFlatTabsv" %flat-tabsv) :pointer
  (children :pointer))

(defun flat-tabs (&rest children)
  (with-ihandle-sequence (a children)
    (%flat-tabsv a)))

(defcfun ("IupBackgroundBox" background-box) :pointer
  (child :pointer))

(defcfun ("IupScrollBox" scroll-box) :pointer
  (child :pointer))

(defcfun ("IupFlatScrollBox" flat-scroll-box) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupDetachBox" detach-box) :pointer
  (child :pointer))

(defcfun ("IupExpander" expander) :pointer
  (child :pointer))

(defcfun ("IupSbox" sbox) :pointer
  (child :pointer))

(defcfun ("IupSplit" split) :pointer
  (child1 :pointer)
  (child2 :pointer))

