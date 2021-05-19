// export jquery to global
var jQuery = require('jquery')
// include jQuery in global and window scope (so you can access it globally)
// in your web browser, when you type $('.div'), it is actually refering to global.$('.div')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;


require("packs/bootstrap.min")
require("packs/jquery-3.3.1.min")
require("packs/jquery-ui.min")
require("packs/jquery.nice-select.min")
require("packs/jquery.slicknav")
require("packs/mixitup.min")
require("packs/owl.carousel.min")
require("packs/main")
require("packs/test")