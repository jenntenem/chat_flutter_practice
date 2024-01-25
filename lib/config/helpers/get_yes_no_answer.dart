import 'package:chat_flutter_practice/infraestructure/model/yes_no.model.dart';
import 'package:dio/dio.dart';

import 'package:chat_flutter_practice/domain/entities/message.class.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
