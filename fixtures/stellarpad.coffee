module.exports =
  input: 
    manifestURL: "/appcache.manifest"
    title: "Stellarpad"
    webApp: true
    cssPath: "/latest.css"
    jsPath: "/latest.js"
    favIcon: "/favicon.ico"
    appleTouchIconsPrecomposed:
      "72x72": "/Icon-72.png"
      "144x144": "/Icon-722x.png"
      "57x57": "/Icon.png"
      "114x114": "/Icon2x.png"
    jsCode: "$(function(){Stellarpad.initialize()})"
  output: """
<!DOCTYPE html>
<html manifest="/appcache.manifest">
  <head>
    <title>Stellarpad</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/Icon-72.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/Icon-722x.png">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="/Icon.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/Icon2x.png">
    <link rel="stylesheet" href="/latest.css" type="text/css">
    <script type="text/javascript" src="/latest.js"></script>
    <script type="text/javascript">$(function(){Stellarpad.initialize()})</script>
  </head>
  <body></body>
</html>
"""