class ChatUser {
  String name;
  String userProfileURL;
  DateTime lastMessageTime;
  int noOfUnreadMessages;
  List messages;

  ChatUser(this.name,
      {this.userProfileURL,
      this.lastMessageTime,
      this.noOfUnreadMessages,
      this.messages});
}
