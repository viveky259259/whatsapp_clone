import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_user.dart';
import 'package:whatsapp_clone/models/message_item.dart';
import 'package:whatsapp_clone/screens/widgets/custom_message_item_widget.dart';
import 'package:whatsapp_clone/screens/widgets/custom_text_box_widget.dart';

class ChatMessageScreen extends StatefulWidget {
  final ChatUser user;

  ChatMessageScreen(this.user);

  @override
  _ChatMessageScreenState createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  List<MessageItem> messages;

  @override
  void initState() {
    super.initState();
    print('HI im in init');

    messages = [
      MessageItem('Hi', DateTime.now(),isMine: true),
      MessageItem('Hi', DateTime.now(), isMine:false),
      MessageItem('Hi', DateTime.now(),isMine: true),
      MessageItem('Hi', DateTime.now(),isMine: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('HI im in build');
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                child: Image.network(
                  widget.user.userProfileURL,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(child: Text(widget.user.name)),
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.videocam),
                onPressed: () {
                  print('video');
                }),
            IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  print('call');
                }),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Center(child: CustomTextBoxWidget('TODAY', Colors.blue.shade300)),
            SizedBox(
              height: 16,
            ),
            Center(
                child: CustomTextBoxWidget('Message of this chat is encrypted',
                    Colors.yellow.shade300)),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CustomMessageItemWidget(messages[index]);
                },
                itemCount: messages.length,
              ),
            )
          ],
        ));
  }
}
