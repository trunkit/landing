SiteBindings.home = ->
  advanceSlides = ->
    slides = $(".features > article")

    currentSlide = slides.filter(":visible")
    nextSlide    = currentSlide.next()
    nextSlide    = slides.filter(":first") if nextSlide.length < 1

    currentSlide.fadeOut()
    nextSlide.fadeIn()

  setInterval advanceSlides, 4000

  true