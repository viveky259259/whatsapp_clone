import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(WhatsappClone());
}


class WhatsappClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      home: ChatScreen(),
    );
  }
}
