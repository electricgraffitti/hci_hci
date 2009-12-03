// This sets up the videos using FlowPlayer
$(document).ready(function() {
    flowplayer("nucleus_main_video", "/swfs/flowplayer.commercial-3.1.5.swf", {
      key: '#$45a5242c3cfddf0c3cb',
      clip: {
        url: "/videos/meet_nucleus.f4v",
        autoPlay: false
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