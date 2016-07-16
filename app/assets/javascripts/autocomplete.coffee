@setupAutoComplete = () ->
  $(document).ready( =>
    cityInput = document.getElementById('trainer_city') || document.getElementById('event_city')
    return if !cityInput
    autoCompleteCity = new google.maps.places.Autocomplete(cityInput, {types: ['(cities)']})
  )
