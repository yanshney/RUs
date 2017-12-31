// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery-ui
//= require rails-ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
var curr_score=0;
$( document ).on('turbolinks:load', function() {

  $("#res").position({
  at: "left+30 top+45",
  of: "#textfield1"
});

$("#res2").position({
at: "left+30 top+45",
of: "#textfield2"
});

$("#res3").position({
at: "left+30 top+45",
of: "#textfield3"
});

$("#res4").position({
at: "left+30 top+45",
of: "#textfield4"
});

$("#res5").position({
at: "left+30"+" top+45-"+$(window).height(),
of: "#textfield5"
});

$("#res6").position({
at: "left+30"+" top+45-"+$(window).height(),
of: "#textfield6"
});
});



$( document ).on('turbolinks:load', function() {
  $(".drag").draggable({ revert: 'invalid' });

});



$( document ).on('turbolinks:load', function() {
$("#masculine_drop").droppable({
  accept: '.masculine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});
$("#neuter_drop").droppable({
  accept: '.neuter',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});

$("#feminine_drop").droppable({
  accept: '.feminine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});

$("#plural_drop").droppable({
  accept: '.plural',
  drop: function(event, ui) {
      $(ui.draggable).css('background-color', 'green');
      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");

  }
});
});

$( document ).on('turbolinks:load', function() {
  $('.disabled>a').each(function(){
    var href = $(this).attr("href");
    $('a[href="'+href+'"]').removeAttr("data-toggle");
    $('a[href="'+href+'"]').removeAttr("href");

});
});
$(document).on('click', '#changetabbutton',function(){
  $("#1").addClass("disabled");
  $("#1a").addClass("disabled");
  $("#1a").removeClass("active");
  $('a[href="#1"]').removeAttr("data-toggle");
  $('a[href="#1"]').removeAttr("href");
  $("#2").removeClass("disabled");
  $("#2a").removeClass("disabled");
  $("#2a").addClass("active");
  $('#2>a').attr({
        "data-toogle" : "tab",
        "href" : "#2"
    });
    $('#mytabs a[href="#2"]').tab('show')
});

$(document).on('click', '#changetabmove',function(){
  $("#2").addClass("disabled");
  $("#2a").addClass("disabled");
  $("#2a").removeClass("active");
  $('a[href="#2"]').removeAttr("data-toggle");
  $('a[href="#2"]').removeAttr("href");
  $("#3").removeClass("disabled");
  $("#3a").removeClass("disabled");
  $("#3a").addClass("active");
  $('#3>a').attr({
        "data-toogle" : "tab",
        "href" : "#3"
    });
    $('#mytabs a[href="#3"]').tab('show')
});

$(document).on('click', '#changetabchoice',function(){
  $("#3").addClass("disabled");
  $("#3a").addClass("disabled");
  $("#3a").removeClass("active");
  $('a[href="#3"]').removeAttr("data-toggle");
  $('a[href="#3"]').removeAttr("href");
  $("#4").removeClass("disabled");
  $("#4a").removeClass("disabled");
  $("#4a").addClass("active");
  $('#4>a').attr({
        "data-toogle" : "tab",
        "href" : "#4"
    });
    $('#mytabs a[href="#4"]').tab('show')
});
