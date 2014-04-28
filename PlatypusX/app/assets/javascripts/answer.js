var Answer = {
  init: function() {

    $('form#new_answer').on('submit', this.submitAnswer);
    $('form#new_answer').on('ajax:success', this.appendAnswer);
    $('form#new_answer').on('ajax:error', this.showError);
    $('.comment').on('click', function(){console.log('hit comment button')});
    $('.comment').on('ajax:success', this.appendComment);
  },

  submitAnswer: function(e) {
    // e.preventDefault();
  },

  appendAnswer: function(e, data) {
    $('.place_answer').append(data)
    $('#bullshit').on('click', function(event){
      event.preventDefault();
    $( "form.hidden" ).removeClass('hidden');
    $('#new_comment').on('ajax:complete', function(e, data){
      event.preventDefault();
    $('#new_comment').append(data.responseJSON.body+"<br>");
      });
    });
  },

  showError: function(e, data) {
    alert("boooooooooooooooooo!")
  },

  submitComment: function(e) {
    e.preventDefault();
    console.log("comment submitted")
  },

  appendComment: function(e, data){
    console.log("at appendComment");
    $('#new_comment').append(body + "<br>"); 
  }

}

$(document).ready(function() {
  Answer.init(); 
})
