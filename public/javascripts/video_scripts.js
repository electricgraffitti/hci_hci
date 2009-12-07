// This sets up the videos using FlowPlayer
$(document).ready(function() {
    flowplayer("nucleus_main_video", {
      src: "/swfs/flowplayer.commercial-3.1.5.swf",
      wmode: "transparent"
    }, {
      key: '#$45a5242c3cfddf0c3cb',
      clip: {
        url: "/videos/meet_nucleus.f4v",
        autoPlay: true
      },
      plugins:  { 
        controls: null 
      }
    });
});

$(document).ready(function() {
    flowplayer("nucleus_video_real_time", {
       src: "/swfs/flowplayer.commercial-3.1.5.swf",
       wmode: "transparent"
    }, {
      key: '#$45a5242c3cfddf0c3cb',
      canvas: {
        background: '#ff0000'
      },
      clip: {
        url: "/videos/test_from_outsource.flv",
        autoPlay: true
      },
      plugins:  { 
        controls: null 
      }
    });
});

// $f("player1", "flowplayer.swf", { 
//     clip: { 
//         url: 'KimAronson-TwentySeconds59483.flv', 
//         autoPlay: true, 
//         autoBuffering: true 
//     }, 
//     plugins: { 
//         controls: null 
//     }, 
//     onLoad: function(){ 
//         alert("player loaded"); 
//     } 
// });