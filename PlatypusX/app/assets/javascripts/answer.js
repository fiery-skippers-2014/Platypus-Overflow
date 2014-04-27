var Answer = {
  init: function() {
    $('form#new_answer').on('submit', this.submitAnswer);
    $('form#new_answer').on('ajax:success', this.appendAnswer);
    $('form#new_answer').on('ajax:error', this.showError);
    $('div').on('click','a', this.toggleForm);
    // $('.commit').on('click','a',this.appendComment);
  },

  submitAnswer: function(e) {
    // e.preventDefault();
  },

  appendAnswer: function(e, data) {
    $('.place_answer').append(data)
  },

  showError: function(e, data) {
    alert("boooooooooooooooooo!")
  },

  toggleForm: function(e, data) {
   e.preventDefault();
    console.log("barrrrrr");
    $( "form.hidden" ).removeClass('hidden');
  },

  appendComment: function(e, data){
    console.log(data)
    $('.').append(data);
  }

}

$(document).ready(function() {
  Answer.init();
})
