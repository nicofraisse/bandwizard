console.log('hello from double slider')
import $ from "jquery"
// import noUiSlider from 'nouislider'
// var doubleSlider = document.getElementById('double-slider');

// console.log(doubleSlider)

// noUiSlider.create(doubleSlider, {
//     start: [20, 80],
//     connect: true,
//     range: {
//         'min': 0,
//         'max': 100
//     }
// });


  let sliders = document.querySelectorAll(".slidecontainer");

    sliders.forEach( slider => {
      const sliderElement = slider.querySelector('.slider')
      const inputValue = slider.querySelector('#range-value')
      // set the default values
      inputValue.value = sliderElement.value

      slider.addEventListener('change', e => {
        inputValue.value = e.target.value
      })
    })



    $(".js-range-slider").ionRangeSlider({
        type: "double",
        min: 0,
        max: 1000,
        from: 200,
        to: 500,
        grid: true
    });
