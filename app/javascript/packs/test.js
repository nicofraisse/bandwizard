import knob from "jquery-knob"
import $ from "jquery"

// works in case of emergency aka demo day approaching
const allMarkers = document.querySelectorAll('.mapboxgl-marker');
console.log('markers :', allMarkers)
allMarkers.forEach( marker => {
  marker.addEventListener('click', () => {
    setTimeout( () => {
        $('.dial').knob({
        readOnly: true,
        inputColor: "#4EBC87",
        fgColor: "#4EBC87",
        width: 100,
        height: 100
      })
    }, 10)

  })
})

// const allMarkers = document.querySelectorAll('.mapboxgl-marker');
// allMarkers.forEach( marker => {
//   marker.addEventListener('click', () => {
//   waitFor(() => {
//     if (document.querySelector('.dial')) {
//       return true
//     }
//   },
//   true,
//   100,
//   0,
//   "...",
//    () => {
//         $('.dial').knob({
//         readOnly: true,
//         inputColor: "#4EBC87",
//         fgColor: "#4EBC87",
//         width: 100,
//         height: 100
//       })
//     })
//   })
// })


//  const waitFor = (test, expectedValue, msec, count, source, callback) => {
//     // Check if condition met. If not, re-check later (msec).
//     while (test() !== expectedValue) {
//         count++;
//         setTimeout(function() {
//             waitFor(test, expectedValue, msec, count, source, callback);
//         }, msec);
//         return;
//     }
//     // Condition finally met. callback() can be executed.
//     console.log(source + ': ' + test() + ', expected: ' + expectedValue + ', ' + count + ' loops.');
//     callback();
// }
