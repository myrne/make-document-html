module.exports =
  input: 
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
<html>
  <head>
    <title>Stellarpad</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="/Icon-72.png" href="72x72">
    <link rel="apple-touch-icon-precomposed" sizes="/Icon-722x.png" href="144x144">
    <link rel="apple-touch-icon-precomposed" sizes="/Icon.png" href="57x57">
    <link rel="apple-touch-icon-precomposed" sizes="/Icon2x.png" href="114x114">
    <link rel="stylesheet" href="/latest.css" type="text/css">
    <script type="text/javascript" src="/latest.js"></script>
    <script type="text/javascript">$(function(){Stellarpad.initialize()})</script>
  </head>
  <body></body>
</html>
"""