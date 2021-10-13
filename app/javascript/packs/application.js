// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
//import "~/bootstrap/scss/bootstrap"
import "css/styles"
import "@fortawesome/fontawesome-free/js/all"
import "noty/lib/noty"
import "noty/lib/themes/sunset"


window.Noty = require('noty')

//= require jquery
//= require jquery_ujs



Rails.start()
Turbolinks.start()
ActiveStorage.start()

function newFunction() {
    window.Noty = require("noty");
}

