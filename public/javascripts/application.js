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
            $span.stop().fadeTo(400, 0);
          } else {
           $span.stop().fadeTo(400, 1); 
          }
        }, function() {
          $span.stop().fadeTo(400, 0);
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

// Sets up the fade on the Big CTA Buttons
$(document).ready(function() {
  $('div.big_cta_button').removeClass('highlight');
  $('div.big_cta_button a').append('<span class="big_button_hover" />').each(function(){
        $(this).css({fontSize : 0});
        var $span = $('> span.big_button_hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $span.stop().fadeTo(400, 0);
          } else {
           $span.stop().fadeTo(400, 1); 
          }
        }, function() {
          $span.stop().fadeTo(400, 0);
      });
      $(this).click( function() {
        $span.fadeTo(300, 0);
        $('div.big_cta_button a').removeClass('active');
        $(this).addClass('active');
      });
  });
});

// Sets up the fade on the Small CTA Buttons
$(document).ready(function() {
  $('div.cta_button').removeClass('highlight');
  $('div.cta_button a').append('<span class="small_cta_button" />').each(function(){
        $(this).css({fontSize : 0});
        var $span = $('> span.small_cta_button', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $span.stop().fadeTo(400, 0);
          } else {
           $span.stop().fadeTo(400, 1); 
          }
        }, function() {
          $span.stop().fadeTo(400, 0);
      });
      $(this).click( function() {
        $span.fadeTo(300, 0);
        $('div.small_cta_button a').removeClass('active');
        $(this).addClass('active');
      });
  });
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

// This sets up the reflections for images
// $(document).ready(function() {
//   $(".show_wrap img").reflect();
// });

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

function notify(flash_message) {

 var flash_div = $("#flash");
 flash_div.html(flash_message);
 flash_div.fadeIn(400);

 setTimeout(function() {
  flash_div.fadeOut(2000,
  function() {
   flash_div.html("");
   flash_div.hide()})},
 1400);
}

$(document).ready(function() {
	$("#flash").hide();
	var flash_message = $("#flash").html().trim();
 	if(flash_message != "") {
		notify(flash_message);
	}
});

// Transparency fix
jQuery.fn.supersleight = function(settings) {
	settings = jQuery.extend({
		imgs: true,
		backgrounds: true,
		shim: 'x.gif',
		apply_positioning: true
	}, settings);
	
	return this.each(function(){
		if (jQuery.browser.msie && parseInt(jQuery.browser.version, 10) < 7 && parseInt(jQuery.browser.version, 10) > 4) {
			jQuery(this).find('*').andSelf().each(function(i,obj) {
				var self = jQuery(obj);
				// background pngs
				if (settings.backgrounds && self.css('background-image').match(/\.png/i) !== null) {
					var bg = self.css('background-image');
					var src = bg.substring(5,bg.length-2);
					var mode = (self.css('background-repeat') == 'no-repeat' ? 'crop' : 'scale');
					var styles = {
						'filter': "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "', sizingMethod='" + mode + "')",
						'background-image': 'url('+settings.shim+')'
					};
					self.css(styles);
				};
				// image elements
				if (settings.imgs && self.is('img[src$=png]')){
					var styles = {
						'width': self.width() + 'px',
						'height': self.height() + 'px',
						'filter': "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + self.attr('src') + "', sizingMethod='scale')"
					};
					self.css(styles).attr('src', settings.shim);
				};
				// apply position to 'active' elements
				if (settings.apply_positioning && self.is('a, input') && (self.css('position') === '' || self.css('position') == 'static')){
					self.css('position', 'relative');
				};
			});
		};
	});
};

$(document).ready(function() {
  $('body').supersleight();
});
