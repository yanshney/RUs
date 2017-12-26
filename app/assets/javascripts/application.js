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


$(document).on('click','#changetabbutton', function(e){
    e.preventDefault();
    $("#menu_one").addClass('disabled');
    $('a[href="#menu1"]').removeAttr("data-toggle");
    $('a[href="#menu1"]').removeAttr("href");
    $('#mytabs a[href="#home"]').tab('show');
});
$( document ).on('turbolinks:load', function() {
  $(".drag").draggable({ revert: 'invalid' });

});

$( document ).on('turbolinks:load', function() {
$("#masculine_drop").droppable({
  accept: '.masculine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
  }
});
$("#neuter_drop").droppable({
  accept: '.neuter',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
  }
});

$("#feminine_drop").droppable({
  accept: '.feminine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
  }
});

$("#plural_drop").droppable({
  accept: '.plural',
  drop: function(event, ui) {
      $(ui.draggable).css('background-color', 'green');
      $(ui.draggable).addClass('ui-state-highlight');

  }
});
});
