// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require bulma-extensions
//= require bulma
// All of bulma
import Bulma from '@vizuaalog/bulmajs';

// Only the plugins you need
import Navbar from '@vizuaalog/bulmajs/src/plugins/navbar';

require("jquery")

import Rails from '@rails/ujs';
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
//import "~/bootstrap/scss/bootstrap"
import "css/styles"
import "@fortawesome/fontawesome-free/js/all"
import "noty/lib/noty"
import "noty/lib/themes/sunset"
import 'bulma-extensions';


Rails.start()
Turbolinks.start()
ActiveStorage.start()



window.Noty = require('noty')
window.Dropzone = require('dropzone')
window.BulmaCarousel = require("bulma-extensions/bulma-carousel/dist/js/bulma-carousel.min.js")



function newFunction() {
    window.Noty = require("noty");
}


$(document).ready(() => {    //=aqui probe $(document).on('turbolinks:load',() => {    / .on('turbolinks:load', function()   /       document.addEventListener("turbolinks:load", function() {           /$(document).on('ready turbolinks:load', function() {     /pero no funcionó
    $('.toggle').on('click', (e) => {
        e.stopPropagation();
        e.preventDefault();
        $('#' + e.target.getAttribute('aria-controls')).toggleClass('is-hidden');
    })
})


require("trix")
require("@rails/actiontext")