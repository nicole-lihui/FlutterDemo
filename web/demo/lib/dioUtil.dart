import 'package:dio/dio.dart';

class DioHttpUtil {
  var dio = new Dio();

  postUrlClient(String username, String password) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    FormData formData = new FormData.fromMap({
      "username": username,
      "password": password,
    });

    try {
      Response response = await dio.post("http://localhost:8081/login",
          data: formData);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  getClient() async {
    try {
      Response response = await dio.get("http://localhost:8081/aa");
      print(response.data.toString());
    } catch (e) {
      print(e);
    }
  }

}
