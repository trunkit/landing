SiteBindings.home = ->
  slides = $(".features > article")

  advanceSlides = ->
    currentSlide = slides.filter(":visible")
    nextSlide    = currentSlide.next()
    nextSlide    = slides.filter(":first") if nextSlide.length < 1

    currentSlide.fadeOut()
    nextSlide.fadeIn()

  intervalID = setInterval advanceSlides, 8000

  $("#home > a").on "click touchstart" ->
    clearInterval intervalID

    currentSlide = slides.filter(":visible")
    currentSlide.fadeOut()

    if $(@).hasClass "left"
      if currentSlide.prev().length < 1
        slides.last().fadeIn()
      else
        currentSlide.prev().fadeIn()
    else
      if currentSlide.next().length < 1
        slides.first().fadeIn()
      else
        currentSlide.next().fadeIn()


    false
  true