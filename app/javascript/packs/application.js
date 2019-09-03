import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initAutocomplete } from '../plugins/init_autocomplete';

import { inputStyling } from '../plugins/input';
// inputStyling();
// import { initSelect2 } from '../plugins/init_select2';

import "../plugins/slider";
import "../plugins/select2";
import "../plugins/current-position";


initMapbox();
initAutocomplete();
// initSelect2();
