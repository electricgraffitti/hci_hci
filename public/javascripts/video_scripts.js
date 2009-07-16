// This sets up the videos using FlowPlayer
$(document).ready(function() {
    flowplayer("home_player", "/swfs/flowplayer-3.1.1.swf", "/videos/test.f4v", {
    clip: {
      autoPlay: false,
      autoBuffering: true
    }
  });
});