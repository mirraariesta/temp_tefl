$ ->
  $(".animated-when-visible").each (i, el) ->
    el = $(el)
    el.addClass("animated " + el.data("animation-type")) if el.visible(true)
  $(window).scroll (event) ->
    $(".animated-when-visible").each (i, el) ->
      el = $(el)
      el.addClass("animated " + el.data("animation-type")) if el.visible(true)
  # Activate knobs with percentages
  $(".dial").knob
    readOnly: true
    draw: ->
      $(@i).val @cv + "%"
  $.scrollUp
    scrollText: "<i class='icon-chevron-up'></i>"
  # Activate isotope items
  $(".isotope-w").isotope
    itemSelector : '.item',
    layoutMode : 'fitRows'

  # filter items when filter link is clicked
  $(".portfolio-filters a").click ->
    selector = $(this).attr("data-filter")
    $(".isotope-w").isotope filter: selector
    false

  # Activate lightbox (swipebox)
  $(".swipebox").swipebox()