$(document).ready(function() {
  $('ul.nav_ul li').removeClass('highlight');
  $('ul.nav_ul a').append('<span class="hover" />').each(function(){
    $(this).css({fontSize : 0});
    var $span = $('> span.hover', this).css({opacity : 0});
    $(this).hover(function() {
      $span.fadeTo(500, 1);
    }, function() {
      $span.fadeTo(500, 0);
    });
  });
});

