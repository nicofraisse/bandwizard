App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    console.log('received');
    document.querySelector("#messages").classList.remove('hidden')
    return document.querySelector('#messages').insertAdjacentHTML("beforeend",this.renderMessage(data));
  },

  renderMessage: function(data) {
    console.log('sent');
    return "<p style=''> <b>" + data.user + ": </b>" + data.message + "</p>";
  }
});
