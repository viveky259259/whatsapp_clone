import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_user.dart';
import 'package:whatsapp_clone/screens/widgets/custom_text_box_widget.dart';

class ChatMessageScreen extends StatefulWidget {
  final ChatUser user;

  ChatMessageScreen(this.user);

  @override
  _ChatMessageScreenState createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text(widget.user.name),
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
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('menu');
                }),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            Center(child: CustomTextBoxWidget('TODAY', Colors.blue.shade300)),
            SizedBox(
              height: 16,
            ),
            Center(
                child: CustomTextBoxWidget(
                    'Message of this chat is encrypted', Colors.yellow.shade300)),
          ],
        ));
  }
}
