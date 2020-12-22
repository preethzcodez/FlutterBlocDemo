import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_bloc_demo/constants/config.dart';
import 'exceptions.dart';
import 'package:http/http.dart' as http;

class ApiHandler {

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Config.baseUrl + url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
            'StatusCode : ${response.statusCode}');
    }
  }
}