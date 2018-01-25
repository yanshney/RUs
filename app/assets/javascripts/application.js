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
var check=0;
console.log($("#textfield1").val());

$( document ).on('turbolinks:load', function() {
  $(".drag").draggable({ revert: 'invalid' });

});



$( document ).on('turbolinks:load', function() {
$(".masculine_drop").droppable({
  accept: '.masculine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});
$(".neuter_drop").droppable({
  accept: '.neuter',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});

$(".feminine_drop").droppable({
  accept: '.feminine',
  drop: function(event, ui) {

      $(ui.draggable).addClass('ui-state-highlight');
      curr_score+=0.5;
      $("#score").html("The current score is "+curr_score+"/20");
  }
});

$(".plural_drop").droppable({
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
$(document).on('click', '#changetabbutton1',function(){
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

$(document).on('click', '#changetabbutton2',function(){
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

$(document).on('click', '#changetabbutton3',function(){
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
  $('.answer').hide();
});

$(document).on('click', '#changetabbutton4',function(){
  $("#4").addClass("disabled");
  $("#4a").addClass("disabled");
  $("#4a").removeClass("active");
  $('a[href="#4"]').removeAttr("data-toggle");
  $('a[href="#4"]').removeAttr("href");
  $("#5").removeClass("disabled");
  $("#5a").removeClass("disabled");
  $("#5a").addClass("active");
  $('#5>a').attr({
        "data-toogle" : "tab",
        "href" : "#5"
    });
    $('#mytabs a[href="#5"]').tab('show')
    $('.answer').hide();
    $("#check4").removeClass().addClass("0");
});
$(document).on('click', '#changetabbutton5',function(){
  $("#5").addClass("disabled");
  $("#5a").addClass("disabled");
  $("#5a").removeClass("active");
  $('a[href="#5"]').removeAttr("data-toggle");
  $('a[href="#5"]').removeAttr("href");
  $("#6").removeClass("disabled");
  $("#6a").removeClass("disabled");
  $("#6a").addClass("active");
  $('#6>a').attr({
        "data-toogle" : "tab",
        "href" : "#6"
    });
    $('#mytabs a[href="#6"]').tab('show');
    $('.answer').hide();
    $("#check5").removeClass().addClass("0");
});

$(document).on('click', '#changetabbutton6',function(){
  $("#6").addClass("disabled");
  $("#6a").addClass("disabled");
  $("#6a").removeClass("active");
  $('a[href="#6"]').removeAttr("data-toggle");
  $('a[href="#6"]').removeAttr("href");
  $("#7").removeClass("disabled");
  $("#7a").removeClass("disabled");
  $("#7a").addClass("active");
  $('#7>a').attr({
        "data-toogle" : "tab",
        "href" : "#7"
    });
    $('#mytabs a[href="#7"]').tab('show');
    $("#check6").removeClass().addClass("0");


});
$(document).on('click', '#changetabbutton7',function(){
  $("#7").addClass("disabled");
  $("#7a").addClass("disabled");
  $("#7a").removeClass("active");
  $('a[href="#7"]').removeAttr("data-toggle");
  $('a[href="#7"]').removeAttr("href");
  $("#8").removeClass("disabled");
  $("#8a").removeClass("disabled");
  $("#8a").addClass("active");
  $('#8>a').attr({
        "data-toogle" : "tab",
        "href" : "#8"
    });
    $('#mytabs a[href="#8"]').tab('show');


});
$(document).on('click', '#changetabbutton8',function(){
  $("#8").addClass("disabled");
  $("#8a").addClass("disabled");
  $("#8a").removeClass("active");
  $('a[href="#8"]').removeAttr("data-toggle");
  $('a[href="#8"]').removeAttr("href");
  $("#9").removeClass("disabled");
  $("#9a").removeClass("disabled");
  $("#9a").addClass("active");
  $('#9>a').attr({
        "data-toogle" : "tab",
        "href" : "#9"
    });
    $('#mytabs a[href="#9"]').tab('show');


});

$(document).on('click', '#changetabbutton9',function(){
  $("#9").addClass("disabled");
  $("#9a").addClass("disabled");
  $("#9a").removeClass("active");
  $('a[href="#9"]').removeAttr("data-toggle");
  $('a[href="#9"]').removeAttr("href");
  $("#10").removeClass("disabled");
  $("#10a").removeClass("disabled");
  $("#10a").addClass("active");
  $('#10>a').attr({
        "data-toogle" : "tab",
        "href" : "#10"
    });
    $('#mytabs a[href="#10"]').tab('show');


});


$(document).on('click', '.btn-success',function(){
$(".check").removeClass().addClass("check 0");
$(".check").show();
check=0;
$('.textfield').attr('readonly', false);
$('.textfield').removeClass('input-disabled');
$('.textfield').val("");
$('.textfield2').attr('readonly', false);
$('.textfield2').removeClass('input-disabled');
$('.textfield2').val("");
$('.textfield3').attr('readonly', false);
$('.textfield3').removeClass('input-disabled');
$('.textfield3').val("");
$('.textfield4').attr('readonly', false);
$('.textfield4').removeClass('input-disabled');
$('.textfield4').val("");
$('.textfield5').attr('readonly', false);
$('.textfield5').removeClass('input-disabled');
$('.textfield5').val("");
$('.textfield6').attr('readonly', false);
$('.textfield6').removeClass('input-disabled');
$('.textfield6').val("");
$(".res").html("");
$(".res2").html("");
$(".res3").html("");
$(".res4").html("");
$(".res5").html("");
$(".res6").html("");
});

$(document).on('click', '#changetabchoice',function(){
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

$(document).on('click', '.check',function(){
var className = $(this).attr('class');

$(this).removeClass();

className = className+"0";
$(this).addClass(className);
if($(this).hasClass("0000")){
  $( this ).hide();
}
});
