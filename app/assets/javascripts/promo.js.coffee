# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
SiteBindings.promo = ->
	$("form").on "submit", ->
		return true if $(@).find("input[name=skip]").val() == "true"

		if $(@).find("input[type=text]").val() == ""
			alert("You need to enter something before continuing!")
			false

	$("form input.share").on "click", ->
		if $(@).find("input[type=text]").val() == ""
			alert("You need to enter something before continuing!")
			return false

		$("form > div.input").slideUp()
		$(@).parent().html('<input type="submit" value="Continue">')

		return false

	$("a.continue").on "click", ->
		$("form").append($("<input>").attr("type", "hidden").attr("name", "skip").val("true"))
		$("form").trigger "submit"
		false

	true
