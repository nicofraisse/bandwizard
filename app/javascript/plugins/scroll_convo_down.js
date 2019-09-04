export const scrollConvoDown = () => {
  const messageList = document.querySelector(".message-list");
  if (messageList) {
    messageList.scrollTop = 1000000000;
  }
}
