(in-package #:iup)

(cffi:defcfun ("IupFill" filler) iup-handle)

(cffi:defcfun ("IupSpace" spacer) iup-handle)

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupCboxv" cboxv) iup-handle
  (children iup-handles))

(defun cbox (&rest children)
  (cboxv children))

(cffi:defcfun ("IupGridBoxv" grid-boxv) iup-handle
  (children iup-handles))

(defun grid-box (&rest children)
  (grid-boxv children))

(cffi:defcfun ("IupHboxv" hboxv) iup-handle
  (children iup-handles))

(defun hbox (&rest children)
  (hboxv children))

(cffi:defcfun ("IupVboxv" vboxv) iup-handle
  (children iup-handles))

(defun vbox (&rest children)
  (vboxv children))

(cffi:defcfun ("IupZboxv" zboxv) iup-handle
  (children iup-handles))

(defun zbox (&rest children)
  (zboxv children))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupRadio" radio) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupNormalizerv" normalizerv) iup-handle
  (ih_list iup-handles))

(defun normalizer (&rest children)
  (normalizerv children))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupFrame" frame) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupFlatFrame" flat-frame) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupTabsv" tabsv) iup-handle
  (children iup-handles))

(defun tabs (&rest children)
  (tabsv children))

(cffi:defcfun ("IupFlatTabsv" flat-tabsv) iup-handle
  (children iup-handles))

(defun flat-tabs (&rest children)
  (flat-tabsv children))

(cffi:defcfun ("IupBackgroundBox" background-box) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupScrollBox" scroll-box) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupFlatScrollBox" flat-scroll-box) iup-handle
  (child iup-handle))

;;--------------------------------------------------------------------------------------

(cffi:defcfun ("IupDetachBox" detach-box) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupExpander" expander) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupSbox" sbox) iup-handle
  (child iup-handle))

(cffi:defcfun ("IupSplit" split) iup-handle
  (child1 :pointer)
  (child2 :pointer))

