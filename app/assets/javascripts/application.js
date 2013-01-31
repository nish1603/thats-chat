// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .

 
        function debug(str){ $("#debug").append("<p>"+str+"</p>"); };

        ws = new WebSocket('ws://127.0.0.1:3000');
        ws.onmessage = function(evt) { $("#msg").append("<p>"+evt.data+"</p>"); };
        ws.onclose = function() { debug("socket closed"); };
        ws.onopen = function() {
          debug("connected...");
          alert("hello");
          ws.send("hello server");
        };

        $('form#new_message').live('submit', function(){
          console.log('baby');
          ws.send('baby');
        });
 
