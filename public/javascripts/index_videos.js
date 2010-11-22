// (function(a){$f.addPlugin("playlist",function(d,o){var n=this;var b={playingClass:"playing",pausedClass:"paused",progressClass:"progress",template:'<a href="${url}">${title}</a>',loop:false,playOnClick:true,manual:false};a.extend(b,o);d=a(d);var j=n.getPlaylist().length<=1||b.manual;var k=null;function e(q){var p=m;a.each(q,function(r,s){if(!a.isFunction(s)){p=p.replace("${"+r+"}",s).replace("$%7B"+r+"%7D",s)}});return p}function i(){k=d.children().unbind("click.playlist").bind("click.playlist",function(){return h(a(this),k.index(this))})}function c(){d.empty();a.each(n.getPlaylist(),function(){d.append(e(this))});i()}function h(p,q){if(p.hasClass(b.playingClass)||p.hasClass(b.pausedClass)){n.toggle()}else{p.addClass(b.progressClass);n.play(q)}return false}function l(){if(j){k=d.children()}k.removeClass(b.playingClass);k.removeClass(b.pausedClass);k.removeClass(b.progressClass)}function f(p){return(j)?k.filter("[href="+p.originalUrl+"]"):k.eq(p.index)}if(!j){var m=d.is(":empty")?b.template:d.html();c()}else{k=d.children();if(a.isFunction(k.live)){a(d.selector+"> *").live("click",function(){var p=a(this);return h(p,p.attr("href"))})}else{k.click(function(){var p=a(this);return h(p,p.attr("href"))})}var g=n.getClip(0);if(!g.url&&b.playOnClick){g.update({url:k.eq(0).attr("href")})}}n.onBegin(function(p){l();f(p).addClass(b.playingClass)});n.onPause(function(p){f(p).removeClass(b.playingClass).addClass(b.pausedClass)});n.onResume(function(p){f(p).removeClass(b.pausedClass).addClass(b.playingClass)});if(!b.loop&&!j){n.onBeforeFinish(function(p){if(!p.isInStream&&p.index<k.length-1){return false}})}if(j&&b.loop){n.onBeforeFinish(function(q){var p=f(q);if(p.next().length){p.next().click()}else{k.eq(0).click()}return false})}n.onUnload(function(){l()});if(!j){n.onPlaylistReplace(function(){c()})}n.onClipAdd(function(q,p){k.eq(p).before(e(q));i()});return n})})(jQuery);

// Video Page Video Player
$(document).ready(function() {
  
  // var v_link = "videos/3/original/dr_manny.flv";
  
  var player = $f("player",
  // Flash Configs
  {
     src: "/swfs/flowplayer.commercial-3.1.5.swf",
     wmode: 'opaque'
  },
  // Player Configs
  { 
    key: '#$45a5242c3cfddf0c3cb',
    
    play: {opacity: 0},
    
    canvas: {
   		background: '#000000',
   		backgroundGradient: 'none'
   	},
   	
   	screen: {
   		backgroundColor: '#000000',
   		backgroundGradient: 'none'
   	},
    
    plugins:  {
      content: {
   			// the only required property for dynamic loading
   			url: 'swfs/flowplayer.content-3.1.0.swf',

   			// some display properties
   			height: 80,
   			color: '#ffffff',
   			// padding:10,
   			backgroundColor: '#000000',
   			backgroundGradient: [0.0, 0.0, 0.0],
   			border: "none",
   			opacity: 0.0,
   			zIndex: 10
   		},
      controls: {
            sliderGradient: 'none',
            tooltipColor: '#5F747C',
            borderRadius: '0px',
            volumeSliderGradient: 'none',
            bufferColor: '#ffffff',
            progressColor: '#0b471d',
            progressGradient: 'medium',
            timeBgColor: '#555555',
            durationColor: '#ffffff',
            buttonOverColor: '#728B94',
            sliderColor: '#000000',
            volumeSliderColor: '#000000',
            buttonColor: '#3d4c43',
            bufferGradient: 'none',
            timeColor: '#051a0b',
            backgroundColor: '#000000',
            tooltipTextColor: '#ffffff',
            backgroundGradient: 'low',
            height: 20,
            opacity: 1.0
      }
    },
    
    clip: {
      // url: "/videos/4/original/brian_fox_073109.f4v?1260914724",
   		autoPlay: false,
   		autoBuffering: true,
   		fadeInSpeed: 5000,
   		scaling: "orig",
   		backgroundColor: '#000000'
   	},
    
        
    // onMouseOver: function() { 
    //   this.getControls().fadeIn(600); 
    // }, 
    // 
    // // you can specify milliseconds how long the fading lasts 
    // onMouseOut: function() { 
    //   this.getControls().fadeOut(600); 
    // },
    
    playlist: []
        
        
  });
  
  $("a.overlay_link").overlay({ 
		// custom expose settings
	  top: 'center',
	  expose: {
	    color: '#000',
	    opacity: 0.85,
	    closeSpeed: 700
	  },
	
	  onLoad: function() {
	   var v = this.getTrigger().attr("href");
	 	 player.load().play(v);
	  },
	
	  onClose: function() {
	    player.unload();
	  }
	  });

});
