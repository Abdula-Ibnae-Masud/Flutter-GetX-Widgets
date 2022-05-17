import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiUse extends StatefulWidget {
  const ApiUse({Key? key}) : super(key: key);

  @override
  State<ApiUse> createState() => _ApiUseState();
}

class _ApiUseState extends State<ApiUse> {
  //List<DataPass> listOfData = [];
  Future<void> getData() async {
    http.Response response = await http
        .get(Uri.parse(('https://jsonplaceholder.typicode.com/posts')));
    // List<dynamic> data = jsonDecode(response.body);
    // Map data = jsonDecode(response.body); // 'Map<dynamic, dynamic>', but got one of type 'List<dynamic>'
    print(response.body);

    /*for (int i = 0; i < data.length; i++) {
      DataPass dataPass = new DataPass.fromJson(data[i]);
      listOfData.add(dataPass);
      //print(listOfData.id);
    }*/
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DataPass {
  late int id;
  late int userId;
  late String title;
  late String body;

  DataPass(this.id, this.userId, this.body, this.title);

  DataPass.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson[id];
    userId = parsedJson[userId];
    title = parsedJson[title];
    body = parsedJson[body];
  }
}
