import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_item.dart';

class CustomMessageItemWidget extends StatelessWidget {
 final MessageItem item;


 CustomMessageItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.green.shade300,
      ),

      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: item.isMine? 48: 16,bottom: 8,top: 8,right: !item.isMine ? 48:16),
      child: Text(item.message),
    );
  }
}
