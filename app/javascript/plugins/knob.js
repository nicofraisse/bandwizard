import knob from "jquery-knob"
import $ from "jquery"

console.log('knobbing')

$(function(){
  $('.dial').knob({
    inputColor: "#51BE8A",
    fgColor: "#51BE8A",
    width: 120,
    height: 120

  });
});
