App.messages = App.cable.subscriptions.create({ channel:'MessagesChannel',user_id: document.querySelector("meta[name='user-id']").content}, {
  received: function(data) {
    console.log('received', data);
    document.querySelector("#messages").classList.remove('hidden')
    return document.querySelector('#messages').insertAdjacentHTML("beforeend", data.messageHTML);
  }
});
