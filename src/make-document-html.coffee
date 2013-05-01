makeDefaults = require "./make-defaults"
template = require "./template"
_ = require "underscore"

module.exports = (data) ->
  data = _.clone data
  data = _.defaults data, makeDefaults()
  data.cssPaths = [] unless data.cssPaths instanceof Array
  data.jsPaths = [] unless data.jsPaths instanceof Array
  data.shortcutIcon = data.favIcon if data.favIcon
  data.body = "\n\n#{data.body}\n\n" if data.body
  data.jsPaths.push data.jsPath if data.jsPath
  data.cssPaths.push data.cssPath if data.cssPath
  template data