import places from 'places.js';

// const initAutocomplete = () => {
//   const addressInput = document.getElementById('address');
//   if (addressInput) {
//     const placesAutocomplete = places({
//       appID: 'plAJO7SMC2BS',
//       apiKey: '1d511dfc565f724f95e2ba9098d4441b',
//       container: addressInput
//       }).configure({
//         useDeviceLocation: true
//       }).on('change', e => console.log(e));
//   }

// //   // if (navigator) {
// //   //   const location = navigator.geolocation.getCurrentPosition(console.log)
// //   // }
//  };

// export { initAutocomplete };

const initAutocomplete = () => {
  const addressInput = document.getElementById('address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
