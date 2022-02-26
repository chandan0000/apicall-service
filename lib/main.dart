import 'package:apicall/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}







































  // void getRequest() async {
  //   //Url
  //   var url = Uri.parse("https://reqres.in/api/users");
  //   var response = await http.get(url);
  //   print(response.body.toString());
  // }

  // void postRequest() async {
  //   var url = Uri.parse("https://reqres.in/api/login");
  //   var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
  //   var response = await http.post(url, body: data);
  //   print(response.body.toString());
  // }
