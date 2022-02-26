import 'dart:convert';
import 'package:apicall/response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  getData() async {
    //Url
    var url = Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?q=darbhanga&appid= ");
    var response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    print(response.body);
    return OpenWheather.fromJson(data);
  }
}
