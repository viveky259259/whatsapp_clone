import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsapp_clone/models/chat_user.dart';

class ChatsApi {
  CollectionReference collectionReference =
      Firestore.instance.collection('chats');

  Future<List<ChatUser>> getChats() async {
    List<ChatUser> chatUsers = [];
    var queriedData = await collectionReference.getDocuments();

    queriedData.documents.forEach((element) {
      ChatUser user = new ChatUser(element['name'],
          userProfileURL: element['user_profile_url']);
      chatUsers.add(user);
    });

    return chatUsers;
  }
}
