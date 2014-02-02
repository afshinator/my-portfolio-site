// For the Scroll to top button
$(document).ready(function() {
    var offset = 220;
    var duration = 500;
    
    // Add the link to the bottom of the page, positioned as well as styled with CSS
    $('body').append('<a href="#" class="back-to-top">TOP</a>');
    
    // Control when its visible and not
    $(window).scroll(function() {
        if (jQuery(this).scrollTop() > offset) {
            jQuery('.back-to-top').fadeIn(duration);
        } else {
            jQuery('.back-to-top').fadeOut(duration);
        }
    });
    
    // Scroll to top when its clicked.
    $('.back-to-top').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
    })
});

