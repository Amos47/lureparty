@updatePlaceId = () ->
  place = autocompleteCity.getPlace()
  context.placeId = place.place_id
  Twine.refresh()

@setupAutoComplete = () ->
  $(document).ready( =>
    cityInput = document.getElementsByClassName('autocompleteCity')[0]
    return if !cityInput
    @autocompleteCity = new google.maps.places.Autocomplete(cityInput, {types: ['(cities)']})
    @autocompleteCity.addListener('place_changed', @updatePlaceId)
  )