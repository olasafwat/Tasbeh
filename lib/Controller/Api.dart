import 'dart:convert';
import 'package:http/http.dart' as http;
class Api
{

  static getTimes() async {
    var url = Uri.parse(
        "https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt&method=5");

    // response -> hygeb al data mn al net
    var response = await http.get(url);
     var responsebody = jsonDecode(response.body);
    return responsebody;
  }
}