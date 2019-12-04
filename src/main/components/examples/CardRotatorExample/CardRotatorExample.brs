sub init()
    ' Initial Setup & Focus Control
    m.CardRotatorExample = m.top.findNode("CardRotatorExample")
    m.CardRotatorExample.setFocus(true)
    m.top.observeField("focusedChild", "handleFocus")
    ' Content Generation
    contentRoot = createObject("roSGNode", "ContentNode")
    child1 = contentRoot.createChild("ContentNode")
    child1.title = "Intro to Angular"
    child1.SDPosterUrl = "pkg:/images/js-for-test/angular.jpg"
    child1.addField("textColor", "String", false)
    child1.textColor = "#ffffffff"
    child2 = contentRoot.createChild("ContentNode")
    child2.title = "Intro to Ember"
    child2.SDPosterUrl = "pkg:/images/js-for-test/ember.png"
    child2.addField("textColor", "string", false)
    child2.textColor = "#ff0000ff"
    child3 = contentRoot.createChild("ContentNode")
    child3.title = "Intro to Polymer"
    child3.SDPosterUrl = "pkg:/images/js-for-test/polymer.png"
    child3.addField("textColor", "string", false)
    child3.textColor = "#000000ff"
    child4 = contentRoot.createChild("ContentNode")
    child4.title = "Intro to React"
    child4.SDPosterUrl = "pkg:/images/js-for-test/react.png"
    child4.addField("textColor", "string", false)
    child4.textColor = "#0000ffff"
    child5 = contentRoot.createChild("ContentNode")
    child5.title = "Intro to Vue"
    child5.SDPosterUrl = "pkg:/images/js-for-test/vue.jpeg"
    child5.addField("textColor", "string", false)
    child5.textColor = "#ffffffff"
    ' TargetSet Size Setup
    focusedTargetSet = createObject("roSGNode", "TargetSet")
    focusedTargetSet.targetRects = [
        { x: 0, y: 0, width: 200, height: 100 },
        { x: 220, y: 120, width: 500, height: 250 },
        { x: 0, y: 400, width: 150, height: 75 },
    ]
    ' Assign Content and TargetSet
    m.CardRotatorExample.listContents = contentRoot
    m.CardRotatorExample.targetSet = focusedTargetSet
    m.top.CardRotatorExample = m.CardRotatorExample
end sub

sub handleFocus(event as object)
    ' Focus Control
    if m.top.isInFocusChain() then
        m.CardRotatorExample.setFocus(true)
    end if
end sub