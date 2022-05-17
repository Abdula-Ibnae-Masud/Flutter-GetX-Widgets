import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyControllerPage extends StatefulWidget {
  const MyControllerPage({Key? key}) : super(key: key);

  @override
  State<MyControllerPage> createState() => _MyControllerPageState();
}

class _MyControllerPageState extends State<MyControllerPage> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The State Maagement'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is Controller State Management",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  "The Name is : ${myController.student.name}",
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                "UpperCase Controller",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              onPressed: () {
                myController.convertToUpperCase();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var student = Student();

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
}

class Student {
  var name = "Masud".obs; // Individuals variable in Observable or Reactive
  var age = 25.obs;
}
