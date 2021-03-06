;;;; package.lisp

(defpackage #:cl-iup
  (:use #:cl #:iterate)
  (:nicknames :iup)
  (:export
   ;;=============================================
   ;; CFFI
   ;;
   ;;---------------------------------------------
   ;; Main API
   ;;---------------------------------------------
   #:start
   #:stop
   #:iup-image-lib-open

   #:main-loop
   #:loop-step
   #:loop-step-wait
   #:main-loop-level
   #:flush
   #:exit-loop

   #:record-input
   #:play-input

   #:iup-update
   #:iup-update-children
   #:iup-redraw
   #:iup-refresh
   #:iup-refresh-children

   ; #:iup-map-font
   ; #:iup-un-map-font
   #:iup-help
   #:iup-load
   #:iup-load-buffer

   #:version
   #:version-date
   #:version-number

   #:iup-set-language
   #:iup-get-language

   #:iup-destroy
   #:iup-detach
   #:iup-append
   #:iup-insert
   #:iup-get-child
   #:iup-get-child-pos
   #:iup-get-child-count
   #:iup-get-next-child
   #:iup-get-brother
   #:iup-get-parent
   #:iup-get-dialog
   #:iup-get-dialog-child
   #:iup-reparent

   #:iup-popup
   #:show
   #:show-xy
   #:iup-hide
   #:iup-map
   #:iup-unmap

   #:attribute

   #:set-attribute
   #:set-str-attribute
   #:set-attribute-id
   #:set-str-attribute-id
   #:set-attribute-id2
   #:set-str-attribute-id2

   #:set-int-attribute
   #:set-int-attribute-id
   #:set-int-attribute-id2

   #:iup-set-attributes
   #:iup-get-attribute
   #:iup-get-attributes
   #:iup-get-int
   #:iup-get-int2
   #:iup-get-int-int
   #:iup-get-float
   #:iup-setf-attribute
   #:reset-attribute
   #:iup-get-all-attributes
   #:iup-set-att

   #:iup-get-attribute-id
   #:iup-get-float-id
   #:iup-get-int-id
   #:iup-setf-attribute-id

   #:iup-get-attribute-id2
   #:iup-get-int-id2
   #:iup-get-float-id2
   #:iup-setf-attribute-id2

   #:iup-set-global
   #:iup-store-global
   #:iup-get-global

   #:iup-set-focus
   #:iup-get-focus
   #:iup-previous-field
   #:iup-next-field

   #:iup-get-callback
   #:set-callback
   #:iup-set-callbacks

   #:iup-get-function
   #:iup-set-function
   #:iup-get-action-name

   #:iup-get-handle
   #:iup-set-handle
   #:iup-get-all-names
   #:iup-get-all-dialogs
   #:iup-get-name

   #:set-attribute-handle
   #:get-attribute-handle
   #:set-attribute-handle-id
   #:get-attribute-handle-id
   #:set-attribute-handle-id2
   #:get-attribute-handle-id2

   #:iup-get-class-name
   #:iup-get-class-type
   #:iup-get-all-classes
   #:iup-get-class-attributes
   #:iup-get-class-callbacks
   #:iup-save-class-attributes
   #:iup-copy-class-attributes
   #:iup-set-class-default-attribute
   #:iup-class-match

   #:iup-create
   #:iup-createv
   #:iup-createp

   ;;Container Controls
   #:filler
   #:spacer

   #:cboxv
   #:cbox
   #:grid-boxv
   #:grid-box
   #:hboxv
   #:hbox
   #:vboxv
   #:vbox
   #:zboxv
   #:zbox

   #:radio
   #:normalizerv
   #:normalizer

   #:frame
   #:flat-frame
   #:tabsv
   #:tabs
   #:flat-tabsv
   #:flat-tabs
   #:background-box
   #:scroll-box
   #:flat-scroll-box
   #:detach-box
   #:expander
   #:sbox
   #:split

   #:iup-image
   #:iup-image-rgb
   #:iup-image-rgba

   #:item
   #:submenu
   #:separator
   #:menuv
   #:menu

   #:button
   #:iup-canvas
   #:dialog
   #:iup-user
   #:label
   #:iup-list
   #:text
   #:iup-multi-line
   #:iup-toggle
   #:iup-timer
   #:iup-clipboard
   #:iup-progress-bar
   #:iup-val
   #:iup-tree
   #:iup-link
   ;; IupImage utility
   #:iup-save-image-as-text
   ;; IupText and IupScintilla utilities
   #:iup-text-convert-lin-col-to-pos
   #:iup-text-convert-pos-to-lin-col
   ;; IupText, IupList, IupTree, IupMatrix and IupScintilla utility
   #:iup-convert-xyto-pos
   ;; IupTree utilities
   #:iup-tree-set-user-id
   #:iup-tree-get-user-id
   #:iup-tree-get-id

   ;;---------------------------------------------
   ;; Pre-definided dialogs
   ;;---------------------------------------------
   #:iup-file-dlg
   #:iup-message-dlg
   #:iup-color-dlg
   #:iup-font-dlg

   #:iup-get-file
   #:message
   #:iup-messagef
   #:iup-alarm
   #:iup-scanf
   #:iup-list-dialog
   #:iup-get-text
   #:iup-get-color

   #:iup-get-param
   #:iup-get-paramv

   #:iup-layout-dialog
   #:iup-element-properties-dialog

    #:iup-open
    #:with-iup
    #:iup-defcallback
    #:iup-defcallback-default

    #:iup-register-event
    #:iup-defevent
    #:iup-defevent-default
    #:iup-set-all-events

    #:iup-lambda-callback
    #:iup-hbox
    #:iup-vbox
    #:iup-grid-box
    #:iup-tabs
    #:iup-attribute
    #:iup-set-attributes

    #:iup-defgui
    #:iup-defgui-template))
