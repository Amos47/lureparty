@updatePlaceId = () ->
  place = autocompleteCity.getPlace()
  context.placeId = place.place_id
  Twine.refresh()

@setupAutoComplete = () ->
  $(document).ready( =>
    cityInput = document.getElementById('trainer_city') || document.getElementById('event_city')
    return if !cityInput
    @autocompleteCity = new google.maps.places.Autocomplete(cityInput, {types: ['(cities)']})
    @autocompleteCity.addListener('place_changed', @updatePlaceId)
  )