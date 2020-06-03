import 'dart:convert';

import 'package:http/http.dart' as http;


class DartHttpUtils {
  var _client = http.Client();

  postUrlencodedClient(String username, String password) async {
    var url = "http://localhost:8081/login";

    Map<String, String> headersMap = new Map();
    headersMap["content-type"] = "application/x-www-form-urlencoded";

    Map<String, String> bodyParams = new Map();
    bodyParams["username"] = username;
    bodyParams["password"] = password;
    _client
        .post(url, headers: headersMap, body: bodyParams, encoding: Utf8Codec())
        .then((http.Response response) {
      if (response.statusCode == 200) {
        print(response.hashCode);
      } else {
        print(response.headers);
      }
    }).catchError((error) {
      print(error.toString());
    });
  }

  getClient() async {
    var url = "http://localhost:8081/aa";
    _client.get(url).then((http.Response response) {
      if (response.statusCode == 200) {
        print(response..body);
        print(response.body.toString());
      } else {
        print(response.headers);
      }
    }).catchError((error) {
      print(error.toString());
    });
  }
}
