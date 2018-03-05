// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

document.addEventListener("DOMContentLoaded", function (e) {
    previewEqualizer();
});
window.addEventListener("resize", function (e) {
    previewEqualizer();
});

document.addEventListener('turbolinks:load', function () {
    previewEqualizer();
});

function previewEqualizer() {
    var previews = document.getElementsByClassName('portfolio_picture');
    if (previews.length) {
        var previews_container = document.getElementsByClassName('portfolio_picture-container');
        var preview_content_min_heights = previews[0].height;
        for (var i = 0; i < previews.length; i++) {
            if (previews[i].height < preview_content_min_heights) {
                preview_content_min_heights = previews[i].height;
            }
        }
        for (var j = 0; j < previews_container.length; j++) {
            previews_container[j].style.height = preview_content_min_heights + 'px';
        }
    }
}
