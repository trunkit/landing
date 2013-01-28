# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
SiteBindings.promo = ->
	$("form").on "submit", ->
		if $(@).find("input[type=email]").val() == ""
			alert("You need to enter something before continuing!")
			false

	true
