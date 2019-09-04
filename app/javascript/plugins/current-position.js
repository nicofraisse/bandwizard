const inputButton = document.querySelector('#current-position');

const inputForAddress = document.querySelector('#address');


if (inputForAddress) {
  inputButton.addEventListener('click', e => {
    if (e.target.checked) {
      // const currentPosition = new Map
      let string = '';
      const location = navigator.geolocation.getCurrentPosition( e => {
        document.getElementById("address").disabled = true;
        const latitude = e.coords.latitude;
        const longitude = e.coords.longitude;
        const coordinates = `${latitude.toString()}, ${longitude.toString()}`;
        inputForAddress.value = `${coordinates}`;
        const algoliaElement = document.querySelector(".algolia-places");
        algoliaElement.style.transition = "opacity 1s ease";
        algoliaElement.style.opacity = "0.5";

        const res = fetch("https://api.mapbox.com/geocoding/v5/mapbox.places/" +  longitude + ","  + latitude + ".json?access_token=pk.eyJ1IjoibG1zc3IiLCJhIjoiY2p6MnNnbG12MDRheDNjbzU3NzJxeDk0NiJ9.6MwlencLqCGQ5kDrOBIgXA").then((response)=> {
          return response.json();
        }).then((json) => {
        inputForAddress.value= json["features"][0]["place_name"];
        });
      });

    } else if (!e.target.checked){
      console.log(event.target);
      console.log(inputForAddress);
      inputForAddress.value= "";
      const algoliaElement = document.querySelector(".algolia-places");
      algoliaElement.style.opacity = "1";
      document.getElementById("address").disabled = false;
    }
  });
}
