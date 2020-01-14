import * as places from "places.js"
const placesAutocomplete = places({
    appId: 'plMZ42MKIIT6',
    apiKey: '6c5dcd39d3359a19e97c8ff5695f4acf',
    container: document.querySelector('#address-input'),
    templates: {
        value: function (suggestion) {
            return suggestion.name
        }
    },
});
placesAutocomplete.configure({
    type: "address",
    language: "fr",
    countries: ["fr"]
})

placesAutocomplete.on('change', (e) => {
    let suggestion = e.suggestion
    $('#citycode-input').val(suggestion.postcode)
    $('#city-input').val(suggestion.city)
} )

placesAutocomplete.on('clear', (e) => {
    let suggestion = e.suggestion
    $('#citycode-input').val('none')
    $('#city-input').val('none')
} )