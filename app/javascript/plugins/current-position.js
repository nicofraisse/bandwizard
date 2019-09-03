const inputButton = document.querySelector('#current-position');

const inputForAddress = document.querySelector('#pos');


if (inputForAddress) {
  inputButton.addEventListener('click', e => {
    if (e.target.checked) {
      // const currentPosition = new Map
      let string = ''
      const location = navigator.geolocation.getCurrentPosition( e => {
        document.getElementById("address").disabled = true;
        const latitude = e.coords.latitude
        const longitude = e.coords.longitude
        coordinates = `${latitude.toString()}, ${longitude.toString()}`
        inputForAddress.value = `${coordinates}`
      });
    }
  })
}

