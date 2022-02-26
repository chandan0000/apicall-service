import 'package:apicall/response.dart';
import 'package:flutter/material.dart';

import 'apiservice.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService api = ApiService();
  OpenWheather? res;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      callApi();
    });
  }

  callApi() async {
    res = await api.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Click Me"),
                onPressed: () {
                  api.getData();
                  setState(() {});
                },
              ),
              Text(res?.main.temp.toString() ?? "--"),
            ],
          ),
        ),
      ),
    );
  }
}
