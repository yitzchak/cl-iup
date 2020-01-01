(in-package #:iup)

(defcfun ("IupFill" iup-fill) :pointer)

(defcfun ("IupSpace" iup-space) :pointer)

;;--------------------------------------------------------------------------------------

(defcfun ("IupRadio" iup-radio) :pointer
  (child :pointer))

(defcfun ("IupVbox" %vbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupVboxv" %vboxv) :pointer
  (children :pointer))

(defun vbox (&rest children)
  (with-foreign-object (foreign-children :pointer (1+ (length children)))
    (setf (mem-aref foreign-children :pointer (length children)) (null-pointer))
    (loop
      for c in children
      for i = 0 then (1+ i)
      do (setf (mem-aref foreign-children :pointer i) c))
    (%vboxv foreign-children)))

(defcfun ("IupZbox" iup-zbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupZboxv" iup-zboxv) :pointer
  (children :pointer))

(defcfun ("IupHbox" iup-hbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupHboxv" iup-hboxv) :pointer
  (children :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupNormalizer" iup-normalizer) :pointer
  (ih_first :pointer)
  &rest)

(defcfun ("IupNormalizerv" iup-normalizerv) :pointer
  (ih_list :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupCbox" iup-cbox) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupCboxv" iup-cboxv) :pointer
  (children :pointer))

(defcfun ("IupSbox" iup-sbox) :pointer
  (child :pointer))

(defcfun ("IupSplit" iup-split) :pointer
  (child1 :pointer)
  (child2 :pointer))

(defcfun ("IupScrollBox" iup-scroll-box) :pointer
  (child :pointer))

(defcfun ("IupFlatScrollBox" iup-flat-scroll-box) :pointer
  (child :pointer))

(defcfun ("IupGridBox" iup-grid-box) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupGridBoxv" iup-grid-boxv) :pointer
  (children :pointer))

(defcfun ("IupExpander" iup-expander) :pointer
  (child :pointer))

(defcfun ("IupDetachBox" iup-detach-box) :pointer
  (child :pointer))

(defcfun ("IupBackgroundBox" iup-background-box) :pointer
  (child :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupFrame" iup-frame) :pointer
  (child :pointer))

(defcfun ("IupFlatFrame" iup-flat-frame) :pointer
  (child :pointer))

(defcfun ("IupTabs" iup-tabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupTabsv" iup-tabsv) :pointer
  (children :pointer))

(defcfun ("IupFlatTabs" iup-flat-tabs) :pointer
  (child :pointer)
  &rest)

(defcfun ("IupFlatTabsv" iup-flat-tabsv) :pointer
  (children :pointer))

;;--------------------------------------------------------------------------------------

(defcfun ("IupGetClassName" iup-get-class-name) :string
  (ih :pointer))

(defcfun ("IupGetClassType" iup-get-class-type) :string
  (ih :pointer))

(defcfun ("IupGetAllClasses" iup-get-all-classes) :int
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassAttributes" iup-get-class-attributes) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupGetClassCallbacks" iup-get-class-callbacks) :int
  (classname :string)
  (names :pointer)
  (n :int))

(defcfun ("IupSaveClassAttributes" iup-save-class-attributes) :void
  (ih :pointer))

(defcfun ("IupCopyClassAttributes" iup-copy-class-attributes) :void
  (src_ih :pointer)
  (dst_ih :pointer))

(defcfun ("IupSetClassDefaultAttribute" iup-set-class-default-attribute) :void
  (classname :string)
  (name :string)
  (value :string))

(defcfun ("IupClassMatch" iup-class-match) :int
  (ih :pointer)
  (classname :string))


