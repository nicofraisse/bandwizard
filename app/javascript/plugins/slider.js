console.log('hello from double slider')
import $ from "jquery"
import ionRangeSlider from 'ion-rangeslider'
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


const ageHiddenInput = document.getElementById('age-range-values')

$(".js-range-slider").ionRangeSlider({
    type: "double",
    min: 14,
    max: 99,
    from: 20,
    to: 50,
});

$(".js-range-slider").on("change", function () {
        var $inp = $(this);
        var from = $inp.prop("value"); // reading input value
        var from2 = $inp.data("from"); // reading input data-from attribute

        console.log(from, from2); // FROM value
        ageHiddenInput.value = `${from}`;
    });


