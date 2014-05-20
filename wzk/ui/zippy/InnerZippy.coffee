###*
  Allows zippy to be put into another zippy
  is used in CollapsableList
###
class wzk.ui.zippy.InnerZippy extends goog.ui.AnimatedZippy

  ###*
    @param {Element} header that will be used to open zippy
    @param {Element} content that will be opened
    @param {wzk.dom.Dom} dom
    @param {boolean=} expanded
    @param {string=} target
  ###
  constructor: (header, content, dom, expanded = false, @target) ->
    super(header, content, expanded, dom)

  ###*
    @override
    @suppress {visibility}
  ###
  onHeaderClick_: (e) ->
    if @target?
      if goog.dom.classes.has e.target, @target
        super(e)
    else
      e.stopPropagation()
