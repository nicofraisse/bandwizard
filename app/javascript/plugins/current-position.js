const inputButton = document.querySelector('#current-position');

const inputForAddress = document.querySelector('#address');


if (inputForAddress) {
  inputButton.addEventListener('click', e => {
    console.log("hi")
    if (e.target.checked) {
      // const currentPosition = new Map
      let string = ''
      const location = navigator.geolocation.getCurrentPosition( e => {
        document.getElementById("address").disabled = true;
        const latitude = e.coords.latitude
        const longitude = e.coords.longitude
        coordinates = `${latitude.toString()}, ${longitude.toString()}`
        inputForAddress.value = `${coordinates}`

        const algoliaElement = document.querySelector(".algolia-places")
        algoliaElement.style.transition = "opacity 1s ease";
        algoliaElement.style.opacity = "0.5";

      });
    }
  })
}
