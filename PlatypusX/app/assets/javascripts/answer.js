var Answer = {
  init: function() {
    $('form#new_answer').on('ajax:success', this.appendAnswer)
    $('form#new_answer').on('ajax:error', this.showError)
  },

  appendAnswer: function(e, data) {
    $('.place_answer').append(data)
  },

  showError: function(e, data) {
    alert("boooooooooooooooooo!")
  },

}

$(document).ready(function() {
  Answer.init();
})
