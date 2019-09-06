import knob from "jquery-knob"
import $ from "jquery"

console.log('knobbing')

console.log($('.dial'))
$(function(){
  $('.dial').knob({
    readOnly: true,
    inputColor: "#4EBC87",
    fgColor: "#4EBC87",
    width: 100,
    height: 100
  });
});



