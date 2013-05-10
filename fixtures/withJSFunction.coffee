module.exports =
  input: 
    title: "A title"
    body: "<div id='mocha'></div>"
    jsCode: ->
      mocha.setup ui: 'bdd', reporter: require 'visionmedia-mocha-matrix'
      if (window.mochaPhantomJS) then mochaPhantomJS.run() else mocha.run()    
   output: """
<!DOCTYPE html>
<html>
  <head>
    <title>A title</title>
    <script type="text/javascript">
        mocha.setup({
          ui: 'bdd',
          reporter: require('visionmedia-mocha-matrix')
        });
        if (window.mochaPhantomJS) {
          return mochaPhantomJS.run();
        } else {
          return mocha.run();
        }
      </script>
  </head>
  <body>

<div id='mocha'></div>

</body>
</html>
"""