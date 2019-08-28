App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    document.querySelector("#messages").classList.remove('hidden')
    return document.querySelector('#messages').insertAdjacentHTML("beforeend",this.renderMessage(data));
  },

  renderMessage: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});
