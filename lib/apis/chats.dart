import 'package:cloud_firestore/cloud_firestore.dart';

class ChatsApi {
  CollectionReference collectionReference =
      Firestore.instance.collection('chats');

  void getChats() {
    collectionReference.getDocuments().then((query) {
      query.documents.forEach((element) {
        print(element);
      });
    });
  }
}
