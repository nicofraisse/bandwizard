App.messages = App.cable.subscriptions.create({ channel:'MessagesChannel',user_id: document.querySelector("meta[name='user-id']").content}, {
  received: function(data) {
    document.querySelector("#messages").classList.remove('hidden')
    document.querySelector('#messages').insertAdjacentHTML("beforeend", data.messageHTML);
    scrollConvoDown();
  }
});
