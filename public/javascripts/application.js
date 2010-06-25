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

// setup some hidden elements
$(document).ready(function() {
  $(".index_banner_nav .first").hide();
  $(".nucleus_banner_nav .first").hide();
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
// Sets up the index cross buttons 
$(document).ready(function() {
  $('ul#index_banner_nav_ul li').removeClass('highlight');
  $('ul#index_banner_nav_ul a').append('<span class="hover" />').each(function(){
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
        $('ul#index_banner_nav_ul a').removeClass('active selected');
        $(this).addClass('active selected');
      });
  });
});
// Sets up the Index Diamonds
$(document).ready(function() {
  $('#banner_diamonds ul li').removeClass('highlight');
  $('#banner_diamonds ul li a').append('<span class="hover" />').each(function(){
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
        $('#banner_diamonds a').removeClass('active selected');
        $(this).addClass('active selected');
      });
  });
});
// Sets up the nucleus nav buttons 
$(document).ready(function() {
  $('ul#nucleus_banner_nav_ul li').removeClass('highlight');
  $('ul#nucleus_banner_nav_ul a').append('<span class="hover" />').each(function(){
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
        $('ul#nucleus_banner_nav_ul a').removeClass('active selected');
        $(this).addClass('active selected');
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

// Sets up the active state for the service panels
$(document).ready(function() {
  $('div#service_boxes div.index_service_wrap a.service_avatar').append('<span class="hover" />').each(function(){
        var $service_span = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $service_span.stop().fadeTo(400, 0);
          } else {
           $service_span.stop().fadeTo(400, 1);
           $(this).parent().stop().animate({ backgroundColor: "#efefef", top : "-2px" }, 400);
          }
        }, function() {
          $service_span.stop().fadeTo(400, 0);
          $(this).parent().stop().animate({ backgroundColor: "#dedede", top : "0px" }, 400);
      });
  });
});

jQuery.service_hover = function(classval) {
  var $block = $("." + classval);
  $block.parent().nextAll().find('span.hover').fadeTo(400, 0);
  $block.parent().nextAll().animate({ backgroundColor: "#dedede", top : "0px" }, 400);
  var $service_span = $('> span.hover', $block).css({opacity : 0});
    $service_span.stop().fadeTo(400, 1);
    $block.parent().stop().animate({ backgroundColor: "#efefef", top : "-2px" }, 400);
};

// This is the Service Inquiry Ajax post
jQuery.ajaxSetup({
 "beforeSend": function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});
$(document).ready(function() {
  $('#new_service_inquiry').submit(function() {
    var $business_type = $('#service_inquiry_business_type_id :selected');
    var $claim_type = $('#service_inquiry_claim_type_id :selected');
    var $goal_type = $('#service_inquiry_goal_type_id :selected');
    
    if ( $business_type.text() === "Choose Option" || $claim_type.text() === "Choose Option" || $goal_type.text() === "Choose Option" ) {
      jAlert('All 3 options must be selected', 'Selection Error');
    } else {
      $params = $(this).serializeArray();
      
      $.service_hover($claim_type.text());

      $.post($(this).attr("action"), $params, null, "script");
    };
    
    return false;
  });
});
// These are the Market box hovers
$(document).ready(function() {
  $('div.market_box a.market_link').append('<span class="hover" />').each(function(){
        var $service_span = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $service_span.stop().fadeTo(400, 0);
          } else {
           $service_span.stop().fadeTo(400, 1);
           $(this).parent().stop().animate({ backgroundColor: "#efefef", top : "-2px" }, 400);
          }
        }, function() {
          $service_span.stop().fadeTo(400, 0);
          $(this).parent().stop().animate({ backgroundColor: "#dedede", top : "0px" }, 400);
      });
  });
});
// These are the Accreditations box hovers
$(document).ready(function() {
  $('div.accreditation_work_box a.accreditation_link').append('<span class="hover" />').each(function(){
        var $service_span = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $service_span.stop().fadeTo(400, 0);
          } else {
           $service_span.stop().fadeTo(400, 1);
           $(this).parent().stop().animate({ backgroundColor: "#efefef", top : "-2px" }, 400);
          }
        }, function() {
          $service_span.stop().fadeTo(400, 0);
          $(this).parent().stop().animate({ backgroundColor: "#dedede", top : "0px" }, 400);
      });
  });
});
// These are the nucleus banner popups
$(document).ready(function() {
  $('.popup_trigger').each(function () {
    // options
    var distance = 10;
    var time = 250;
    var hideDelay = 500;
    var hideDelayTimer = null;

    // tracker
    var beingShown = false;
    var shown = false;
    
    var trigger = $(this).find("h3");
    var popup = $(this).find(".popup").css('opacity', 0);

    // set the mouseover and mouseout on both element
    $([trigger.get(0), popup.get(0)]).mouseover(function () {
      // stops the hide event if we move from the trigger to the popup element
      if (hideDelayTimer) clearTimeout(hideDelayTimer);

      // don't trigger the animation again if we're being shown, or already visible
      if (beingShown || shown) {
        return;
      } else {
        beingShown = true;

        // reset position of popup box
        popup.css({
          display: 'block' // brings the popup back in to view
        })

        // (we're using chaining on the popup) now animate it's opacity and position
        .animate({
          top: '-=' + distance + 'px',
          opacity: 1
        }, time, 'swing', function() {
          // once the animation is complete, set the tracker variables
          beingShown = false;
          shown = true;
        });
      }
    }).mouseout(function () {
      // reset the timer if we get fired again - avoids double animations
      if (hideDelayTimer) clearTimeout(hideDelayTimer);
      
      // store the timer so that it can be cleared in the mouseover if required
      hideDelayTimer = setTimeout(function () {
        hideDelayTimer = null;
        popup.animate({
          top: '-=' + distance + 'px',
          opacity: 0
        }, time, 'swing', function () {
          shown = false;
          popup.css({'display':'none', 'top':'-150px'});
        });
      }, hideDelay);
    });
  });
});


// This is the script for the employee edit profile hide/show feature
$(document).ready(function() {
  var emp_edit_link = $('#employee_profile_slide_link');
  var emp_edit_box = $('#employee_profile_slide');
  
  emp_edit_link.click(function() {
    emp_edit_box.toggle();
  });
});
// Date Pickers
$(document).ready(function() {
  $('#ticket_date_select').datepicker({
		showButtonPanel: true
	});
	$('#event_start_date').datepicker({
		showButtonPanel: true
	});
	$('#event_end_date').datepicker({
		showButtonPanel: true
	});
	$('#ad_expiration_date').datepicker({
		showButtonPanel: true
	});
});
// Sets Up the Crossfade on the index page
$(document).ready(function() {
 
 var $list = $('ul.cube_crossfade');
 var $first_li = $list.children("li:first");
 var $i_width = $first_li.width();
 var $i_height = $first_li.height();
 
 $list.cube_crossfade({
   speed : 2000,
   pause : 8000
 });
});

// Data Tables
$(document).ready(function() {
 servicesTable = $('#services_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
 articlesTable = $('#articles_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
 eventsTable = $('#events_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
 videosTable = $('#videos_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
 documentsTable = $('#documents_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
 advertisementsTable = $('#advertisements_table').dataTable({
   "bJQueryUI": true,
   "sPaginationType": "full_numbers"
 });
});

// hides third party url
$(document).ready(function() {
  $tpurl = $('#third_party_url_field').hide();
  $tpcb = $('#article_third_party');
  
  $tpcb.click( function() {
   if ($(this).is(':checked')) {
    $tpurl.show(); 
   } else {
    $tpurl.hide();
   }
  });
});

// This is a scroll timer trigger
// $(document).everyTime(15000, function () {
//   $('.b_nav1 a').trigger('click');
// });

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
	var flash_message = $.trim($("#flash").html());
 	if(flash_message != "") {
		notify(flash_message);
	}
});

$(document).ready(function() {
	console.log('loaded');
});


