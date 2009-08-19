 // This is the IE6 Js hack for submit button rollovers
$(document).ready(function() {
  $('form .submitbtn').hover(function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
  },
  function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
  });
});
// Sets up the fade on the Main nav buttons
$(document).ready(function() {
  $('ul#main_nav_ul li').removeClass('highlight');
  $('ul#main_nav_ul a').append('<span class="hover" />').each(function(){
        $(this).css({fontSize : 0});
        var $span = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $span.stop().fadeTo(500, 0);
          } else {
           $span.stop().fadeTo(500, 1); 
          }
        }, function() {
          $span.stop().fadeTo(500, 0);
      });
      $(this).click( function() {
        $span.fadeTo(200, 0);
        $('ul#main_nav_ul a').removeClass('active');
        $(this).addClass('active');
      });
  });
});
// Sets the Main Nav Current Page Selection Tab
$(document).ready(function() {
  var url = location.pathname;
  var current_link = $('#main_nav ul li a[href$="' + url + '"]');
  if (url == "/") {
     current_link.removeClass('active');
     $('.home').addClass('active');
   } else {
   current_link.addClass('active');
   }
});
// This is the Timer for the home page banners
$(document).everyTime(15000, function () {
  $('#banner_scroll_r').trigger('click');
});

// This is the calculator method
$(document).ready(function() {
  var my_calc_input = $('#calc_input');
  var member_count = 0;
  my_calc_input.bind('keyup', function() {
    member_count = parseInt(my_calc_input.val());
    return member_count;
  });
  
  var my_calc_button = $('#calc_button');
  my_calc_button.bind('click', function() {
    if (member_count <= 0) {
      jAlert('You need to enter the member lives count', 'Calculator Error');
    } else {
      var calculation = (parseInt(member_count) * 127);
      $('#calc_return_value').html('Your Annual Losses to Fraud <b>$' + calculation + '.00</b>');
      return false;
    }
  });
});

// This is the accordion script
$(document).ready(function() {
  $('.accordion').hSlides({
  			totalWidth: 575, 
  			totalHeight: 300, 
  			minPanelWidth: 30, 
  			maxPanelWidth: 515,
  			activeClass: 'active',
  			speed: 200
  		});
});

// This sets up the reflections for images
$(document).ready(function() {
  $(".show_wrap img").reflect();
});

// This is the script for the employee edit profile hide/show feature
$(document).ready(function() {
  var emp_edit_link = $('#employee_profile_slide_link');
  var emp_edit_box = $('#employee_profile_slide');
  
  emp_edit_link.click(function() {
    emp_edit_box.toggle();
  });
});
// This is the datepicker for the ticket form
$(document).ready(function() {
  $('#ticket_date_select').datepicker({
		showButtonPanel: true
	});
});
// This is the add an attachment field increaser
$(document).ready(function() {
  $upload_div = $('.upload_div');
  $upload_field = $('.upload_field');
  
  $upload_div.before('<a id="add_upload" href="#">Add More Attachments<a/>');
     
  $add_link = $("#add_upload");
  
  $add_link.click(function() {
    $upload_field.clone().appendTo($upload_div);
  });
  
});





