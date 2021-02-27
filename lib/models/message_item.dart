import 'package:whatsapp_clone/models/chat_user.dart';

class MessageItem {
  String message;
  ChatUser user;
  DateTime timeOfSending;
  bool isMine;

  MessageItem(
    this.message,
    this.timeOfSending, {
    this.user,
    this.isMine,
  });
}
