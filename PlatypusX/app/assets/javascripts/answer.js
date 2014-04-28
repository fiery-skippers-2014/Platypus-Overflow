var Answer = {
  init: function() {

    $('form#new_answer').on('submit', this.submitAnswer);
    $('form#new_answer').on('ajax:success', this.appendAnswer);
    $('form#new_answer').on('ajax:error', this.showError);
    $('.commit').on('submit', this.submitComment);
    $('.commit').on('ajax:success', this.appendComment);
  },

  submitAnswer: function(e) {

    // e.preventDefault();
  },

  appendAnswer: function(e, data) {
    $('.place_answer').append(data)
    $('#bullshit').on('click', function(event){
      event.preventDefault();
    $( "form.hidden" ).removeClass('hidden');

    });
  },

  showError: function(e, data) {
    alert("boooooooooooooooooo!")
  },

  submitComment: function(e) {

    // e.preventDefault();
  },

  appendComment: function(e, data){
    console.log("data")
    $('div').append(body);
  }

}

$(document).ready(function() {
  Answer.init();
})
