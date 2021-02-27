import 'package:http/http.dart';

class Api {
  Future getMessageList() async {
    var response = await get('https://chats.free.beeceptor.com/list');

    var data = response.body;
    print(data);
  }
}
