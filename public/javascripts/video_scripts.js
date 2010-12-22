// This sets up the videos using FlowPlayer

// Nucleus Banner1 Video

$(document).ready(function() {
    var player = $f("nucleus_main_video", 
    // Flash Configs
    {
      src: "/swfs/flowplayer.commercial-3.1.5.swf",
      wmode: "transparent",
      bgcolor: "none"
    }, 
    //  Player Configs
    {
      key: '#$45a5242c3cfddf0c3cb',
      play: {opacity: 0},
      clip: {
        url: "/videos/meet_nucleus_1.f4v",
        autoPlay: true,
        backgroundColor: 'transparent',
        
        onLoad: function() {
    			player.play();
    		},
        
        onPause: function(){ 
          player.hide();
          document.getElementById("nucleus_main_video").style.display="none";
        },
        
        onStop: function(){ 
          player.hide();
          document.getElementById("nucleus_main_video").style.display="none";
        },
        
        onFinish: function(){ 
          player.hide();
          document.getElementById("nucleus_main_video").style.display="none";
        }
        
      },
      play: { 
          label: null
      },
      plugins:  { 
        controls: null 
      }
    }).ipad();
    
    $('.play_again_link').click(function() {
      document.getElementById("nucleus_main_video").style.display="";
      player.show();
      player.load();
      player.play();
      return false;
    });
    
});

