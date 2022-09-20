import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:emgenex/model/result.dart';
import 'package:http/http.dart ' as http;

class RemoteServices {
  final dio = Dio(BaseOptions(
      responseType: ResponseType.plain, baseUrl: 'https://reqres.in/api/'));
  static var client = http.Client();

  static Future<List<Datum>> fetchingDatas() async {
    final urls = Uri.parse('https://reqres.in/api/users?page=1');
    var response = await http.get(urls);
    final datas = resultsFromJson(response.body);
    final listofdatas = datas.data.toList();

    // log(datas.data.toString());
    return datas.data.toList();
  }

  Future<Response<dynamic>?> Userlogin(credentials) async {
    try {
      final response = await dio.post("login", data: credentials);

      return response;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
