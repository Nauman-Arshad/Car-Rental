// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require bootstrap-datepicker

// Initialize the mobile menu toggle
$('.js-menu-toggle').click(function(e) {
    e.preventDefault();
    $('.site-menu').toggleClass('show');
});
