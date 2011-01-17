var flash = {

	injectFlashBox: function() {
		$('#flash').addClass("flash_wrap");
		$("#flash").hide();
	},

	setFlash: function() {
		flash_message = $("#flash").html();
		msg = $.trim(flash_message);
		if (msg != "") {
			flash.activateNotice(flash_message);
		};
	},

	activateNotice: function(flash_message) {
		var $flash_div = $("#flash");
		$flash_div.html(flash_message);
    flash_div.fadeIn(400);
		// Set the fadeout
    setTimeout(function() {
     flash_div.fadeOut(2000,
     function() {
      flash_div.html("");
      flash_div.hide()})},
    1400);
	}

};

var app = {
  
  // This is the IE6 Js hack for submit button rollovers
  ieButtonFix: function() {
    $('form .submitbtn').hover(function() {
      $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
      $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
    },
    function() {
      $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
      $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
    });
  },
  
  mainNavHovers: function() {
    var navs = $('ul#main_nav_ul li a');
    var lis = navs.parents('li');
    lis.removeClass('highlight');
    navs.append('<span class="hover" />').each(function(){
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
          navs.removeClass('active');
          $(this).addClass('active');
        });
    });
  },
  
  crossfade: function() {
    var $list = $('ul.cube_crossfade');
    var $first_li = $list.children("li:first");
    var $i_width = $first_li.width();
    var $i_height = $first_li.height();

    $list.cube_crossfade({
      speed : 2000,
      pause : 8000
    });
  },
  
  setCurrentLink: function() {  
    var url = location.pathname;
    var current_link = $('#main_nav ul li a[href$="' + url + '"]');
    if (url == "/") {
       current_link.removeClass('active');
       $('.home').addClass('active');
     } else {
     current_link.addClass('active');
     }
  },
  
  ctaArrows: function() {
    
    var ctaNavs = $('div.cta_button a');
    var ctali = ctaNavs.parents('div.cta_button');
    
    ctali.removeClass('highlight');
    ctaNavs.append('<span class="small_cta_button" />').each(function(){
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
          ctaNavs.removeClass('active');
          $(this).addClass('active');
        });
    });
  },
  
  hideElement: function(el) {
   el.hide(); 
  }
  
};

var panels = {
  
  setFlipTriggers: function(triggers) {
    triggers.click(function() {
      panels.flipPanel($(this));
    });
  },
	
	flipPanel: function(el) {
	  
	  if (el.hasClass('flipped')) {
	    el.revertFlip();
	    el.removeClass('flipped');
	  } else {
	    el.flip({
        direction:'lr',
        speed:350,
        color:'#000'
      });
      el.addClass('flipped');
	  }
	},
  
};

var nucleus = {
  
  nucleusNav: function() {
    
    var anchors = $('ul#nucleus_banner_nav_ul li a');
    var anchorLis = anchors.parents("ul#nucleus_banner_nav_ul li");
    
    anchorLis.removeClass('highlight');
    anchors.append('<span class="hover" />').each(function(){
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
          anchors.removeClass('active selected');
          $(this).addClass('active selected');
        });
    });
  },
  
  nucleusPopups: function() {
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
  }
  
};

var services = {
    
  setServicePanels: function() {
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
  },
  
  serviceInquiry: function() {
    $('#new_service_inquiry').submit(function() {
      var $business_type = $('#service_inquiry_business_type_id :selected');
      var $claim_type = $('#service_inquiry_claim_type_id :selected');
      var $goal_type = $('#service_inquiry_goal_type_id :selected');

      if ( $business_type.text() === "Choose Option" || $claim_type.text() === "Choose Option" || $goal_type.text() === "Choose Option" ) {
        jAlert('All 3 options must be selected', 'Selection Error');
      } else {
        $params = $(this).serializeArray();

        services.triggerServicePanel($claim_type.text());

        $.post($(this).attr("action"), $params, null, "script");
      };

      return false;
    });
  },
  
  triggerServicePanel: function(classval){
    var $block = $("." + classval);
    var $service_span = $('> span.hover', $block).css({opacity : 0});
    
    $block.parent().nextAll().find('span.hover').fadeTo(400, 0);
    $block.parent().nextAll().animate({ backgroundColor: "#dedede", top : "0px" }, 400);
    
    $service_span.stop().fadeTo(400, 1);
    $block.parent().stop().animate({ backgroundColor: "#efefef", top : "-2px" }, 400);
  }
  
};

var markets = {
  
  marketPopup: function() {
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
  }
  
};

var accreds = {
  
  accredsPopup: function() {
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
  }
  
};

var admin = {
  
  employeeEdit: function() {
    var emp_edit_link = $('#employee_profile_slide_link');
    var emp_edit_box = $('#employee_profile_slide');

    emp_edit_link.click(function() {
      emp_edit_box.toggle();
    });
  },
  
  datePickers: function() {
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
  },
  
  dataTables: function() {
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
  },
  
  thirdPartyUrlToggle: function() {
    var $tpurl = $('#third_party_url_field').hide();
    var $tpcb = $('#article_third_party');

    $tpcb.click( function() {
     if ($(this).is(':checked')) {
      $tpurl.show(); 
     } else {
      $tpurl.hide();
     }
    });
  },
  
  multipleUploads: function() {
    var $upload_div = $('.upload_div');
    var $upload_field = $('.upload_field');
    var $add_link = $("#add_upload");
    
    $upload_div.before('<a id="add_upload" href="#">Add More Attachments<a/>');
    
    $add_link.click(function() {
      $upload_field.clone().appendTo($upload_div);
    });
  }
  
};


$(document).ready(function() {
  flash.injectFlashBox();
	flash.setFlash();
  app.ieButtonFix();
  app.mainNavHovers();
  app.setCurrentLink();
});




