// This sets up the videos using FlowPlayer
$(document).ready(function() {
    flowplayer("home_player", "/swfs/flowplayer-3.1.1.swf", {
      clip: {
        url: "/videos/test.f4v",
        autoPlay: false
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