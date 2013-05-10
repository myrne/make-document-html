makeHTML = require "../"
assert = require "assert"

fixtureNames = ["stellarpad","empty","withBody","withJSFunction"]
describe "make-final-html", ->
  it "turns options into html", ->
    for name in fixtureNames
      fixture = require "../fixtures/#{name}.coffee"
      assert.equal makeHTML(fixture.input), makeHTML(fixture.input)
      assert.equal (makeHTML fixture.input), fixture.output
