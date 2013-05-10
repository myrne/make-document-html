makeDefaults = require "./make-defaults"
template = require "./template"
_ = require "underscore"

getFunctionBody = (fn) -> fn.toString().match(/function[^{]+\{([\s\S]*)\}$/)[1];

module.exports = (data) ->
  data = _.clone data
  data = _.defaults data, makeDefaults()
  data.jsCode = getFunctionBody data.jsCode if typeof data.jsCode is "function"
  data.cssPaths = [] unless data.cssPaths instanceof Array
  data.jsPaths = [] unless data.jsPaths instanceof Array
  data.shortcutIcon = data.favIcon if data.favIcon
  data.body = "\n\n#{data.body}\n\n" if data.body
  data.jsPaths.push data.jsPath if data.jsPath
  data.cssPaths.push data.cssPath if data.cssPath
  template data