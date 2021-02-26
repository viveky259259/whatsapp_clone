import 'package:whatsapp_clone/models/message_item.dart';

class ChatUser {
  String name;
  String userProfileURL;
  DateTime lastMessageTime;
  int noOfUnreadMessages;
  List<MessageItem> messages;

  ChatUser(this.name,
      {this.userProfileURL,
      this.lastMessageTime,
      this.noOfUnreadMessages,
      this.messages});

  String timeInString(){
    return '${lastMessageTime.hour}:${lastMessageTime.minute}';
  }
}
