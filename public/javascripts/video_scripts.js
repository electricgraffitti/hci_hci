// This sets up the videos using FlowPlayer

// Nucleus Banner1 Video

$(document).ready(function() {
    flowplayer("nucleus_main_video", 
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
        url: "/videos/meet_nucleus.f4v",
        autoPlay: true,
        backgroundColor: 'transparent'
      },
      play: { 
          label: null, 
          replayLabel: "Get Nucleus" 
      },
      plugins:  { 
        controls: null 
      }
    });
});

// Nucleus Banner2 Video

$(document).ready(function() {
    flowplayer("nucleus_video_real_time", 
    // Flash Configs
    {
       src: "/swfs/flowplayer.commercial-3.1.5.swf",
       wmode: "transparent",
       bgcolor: "none"
    }, 
    // Player Configs
    {
      key: '#$45a5242c3cfddf0c3cb',
      play: {opacity: 0},
      canvas: {
        backgroundColor: 'transparent',
        backgroundGradient: 'none'
      },
      clip: {
        url: "/videos/test_from_outsource2.flv",
        autoPlay: true,
        backgroundColor: 'transparent'
      },
      plugins:  { 
        controls: null
      }
    });
});

// Nucleus Banner3 Video

$(document).ready(function() {
    flowplayer("nucleus_video_next_gen", 
    // Flash Configs
    {
       src: "/swfs/flowplayer.commercial-3.1.5.swf",
       wmode: "transparent",
       bgcolor: "none"
    }, 
    // Player Configs
    {
      key: '#$45a5242c3cfddf0c3cb',
      play: {opacity: 0},
      canvas: {
        backgroundColor: 'transparent',
        backgroundGradient: 'none'
      },
      clip: {
        url: "/videos/test_from_outsource4.flv",
        autoPlay: true,
        backgroundColor: 'transparent'
      },
      plugins:  { 
        controls: null
      }
    });
});


