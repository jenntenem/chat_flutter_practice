import 'package:dio/dio.dart';

import 'package:chat_flutter_practice/domain/entities/message.class.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    return Message(
        text: response.data['answer'],
        senderType: SendType.other,
        imageUrl: response.data['image']);
  }
}
