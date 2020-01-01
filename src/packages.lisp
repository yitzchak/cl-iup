;;;; package.lisp

(defpackage #:iup
  (:use #:cl #:cffi #:iterate)
  (:export
   ;;=============================================
   ;; CFFI
   ;;
   ;;---------------------------------------------
   ;; Main API
   ;;---------------------------------------------
   #:start
   #:stop
   #:IupImageLibOpen

   #:main-loop
   #:IupLoopStep
   #:IupLoopStepWait
   #:IupMainLoopLevel
   #:IupFlush
   #:IupExitLoop

   #:IupRecordInput
   #:IupPlayInput

   #:IupUpdate
   #:IupUpdateChildren
   #:IupRedraw
   #:IupRefresh
   #:IupRefreshChildren

   #:IupMapFont
   #:IupUnMapFont
   #:IupHelp
   #:IupLoad
   #:IupLoadBuffer

   #:version
   #:version-date
   #:version-number

   #:IupSetLanguage
   #:IupGetLanguage

   #:IupDestroy
   #:IupDetach
   #:IupAppend
   #:IupInsert
   #:IupGetChild
   #:IupGetChildPos
   #:IupGetChildCount
   #:IupGetNextChild
   #:IupGetBrother
   #:IupGetParent
   #:IupGetDialog
   #:IupGetDialogChild
   #:IupReparent

   #:IupPopup
   #:show
   #:show-xy
   #:IupHide
   #:IupMap
   #:IupUnmap

   #:set-attribute
   #:IupStoreAttribute
   #:IupSetAttributes
   #:IupGetAttribute
   #:IupGetAttributes
   #:IupGetInt
   #:IupGetInt2
   #:IupGetIntInt
   #:IupGetFloat
   #:IupSetfAttribute
   #:IupResetAttribute
   #:IupGetAllAttributes
   #:IupSetAtt

   #:IupSetAttributeId
   #:IupStoreAttributeId
   #:IupGetAttributeId
   #:IupGetFloatId
   #:IupGetIntId
   #:IupSetfAttributeId

   #:IupSetAttributeId2
   #:IupStoreAttributeId2
   #:IupGetAttributeId2
   #:IupGetIntId2
   #:IupGetFloatId2
   #:IupSetfAttributeId2

   #:IupSetGlobal
   #:IupStoreGlobal
   #:IupGetGlobal

   #:IupSetFocus
   #:IupGetFocus
   #:IupPreviousField
   #:IupNextField

   #:IupGetCallback
   #:IupSetCallback
   #:IupSetCallbacks

   #:IupGetFunction
   #:IupSetFunction
   #:IupGetActionName

   #:IupGetHandle
   #:IupSetHandle
   #:IupGetAllNames
   #:IupGetAllDialogs
   #:IupGetName

   #:IupSetAttributeHandle
   #:IupGetAttributeHandle

   #:IupGetClassName
   #:IupGetClassType
   #:IupGetAllClasses
   #:IupGetClassAttributes
   #:IupGetClassCallbacks
   #:IupSaveClassAttributes
   #:IupCopyClassAttributes
   #:IupSetClassDefaultAttribute
   #:IupClassMatch

   #:IupCreate
   #:IupCreatev
   #:IupCreatep

   ;;---------------------------------------------
   ;; Elements
   ;;---------------------------------------------
   #:IupFill
   #:IupRadio
   #:vbox
   ;#:IupVboxv
   #:IupZbox
   #:IupZboxv
   #:IupHbox
   #:IupHboxv

   #:IupNormalizer
   #:IupNormalizerv

   #:IupCbox
   #:IupCboxv
   #:IupSbox
   #:IupSplit
   #:IupScrollBox
   #:IupGridBox
   #:IupGridBoxv
   #:IupExpander

   #:IupFrame

   #:IupImage
   #:IupImageRGB
   #:IupImageRGBA

   #:IupItem
   #:IupSubmenu
   #:IupSeparator
   #:IupMenu
   #:IupMenuv

   #:IupButton
   #:IupCanvas
   #:dialog
   #:IupUser
   #:label
   #:IupList
   #:IupText
   #:IupMultiLine
   #:IupToggle
   #:IupTimer
   #:IupClipboard
   #:IupProgressBar
   #:IupVal
   #:IupTabs
   #:IupTabsv
   #:IupTree
   #:IupLink
   ;; IupImage utility
   #:IupSaveImageAsText
   ;; IupText and IupScintilla utilities
   #:IupTextConvertLinColToPos
   #:IupTextConvertPosToLinCol
   ;; IupText, IupList, IupTree, IupMatrix and IupScintilla utility
   #:IupConvertXYToPos
   ;; IupTree utilities
   #:IupTreeSetUserId
   #:IupTreeGetUserId
   #:IupTreeGetId

   ;;---------------------------------------------
   ;; Pre-definided dialogs
   ;;---------------------------------------------
   #:IupFileDlg
   #:IupMessageDlg
   #:IupColorDlg
   #:IupFontDlg

   #:IupGetFile
   #:message
   #:IupMessagef
   #:IupAlarm
   #:IupScanf
   #:IupListDialog
   #:IupGetText
   #:IupGetColor

   #:IupGetParam
   #:IupGetParamv

   #:IupLayoutDialog
   #:IupElementPropertiesDialog

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
