// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery")
require("packs/bootstrap.min")
require("packs/jquery-3.3.1.min")
require("packs/jquery-ui.min")
require("packs/jquery.nice-select.min")
require("packs/jquery.slicknav")
require("packs/mixitup.min")
require("packs/main")
require("packs/test")

Rails.start()
Turbolinks.start()
ActiveStorage.start()
