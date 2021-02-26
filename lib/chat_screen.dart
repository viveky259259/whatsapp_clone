import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_user.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUser> chatUsers = [
    ChatUser('Shreyash'),
    ChatUser('yash'),
    ChatUser('Palak'),
    ChatUser('Pratik'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TCET Whatsapp'),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search clicked');
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('setting clicked');
              })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          ChatUser user = chatUsers[index];

          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(user.name),
            subtitle: Text('How is your scholorship going?'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '08:58',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 10),
                  ),
                  backgroundColor: Colors.green,
                  maxRadius: 8,
                )
              ],
            ),
          );
        },
        itemCount: chatUsers.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat_bubble),
        onPressed: () {
          //body
        },
      ),
    );
  }
}
