import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/home_page.dart';
import 'package:getx/widgets/snackbar.dart';

class DialogbarWidget extends StatelessWidget {
  const DialogbarWidget({Key? key}) : super(key: key);

  // In the project if you want to do only state management, then you are not
  // required to return Get MaterialApp, You can use MaterialApp. But in your project
  // if you want to perform root management, if you want to display Snackbar, DialogeBar
  // BottomSheet without using the context, then you need to use Get MatarialApp.

  @override
  Widget build(BuildContext context) {
    // "MaterialApp" Which is provided by GetX library

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Alart",
                  titleStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                  middleText: "This is the dialog widget",
                  middleTextStyle: const TextStyle(
                      fontSize: 20, fontStyle: FontStyle.italic),
                  backgroundColor: Colors.greenAccent,
                  radius: 30,
                  content: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(child: Text('Loading'))
                      ],
                    ),
                  ),
                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                  onCancel: () {},
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    Get.to(
                      const MyHomePage(),
                      arguments: {
                        //"Data from Dialog widget",
                        'price': Random().nextInt(100).toString(),
                      },
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      duration: const Duration(milliseconds: 4000),
                    );
                  },
                );
              },
              child: const Text('Show DialogBar'),
            )
          ],
        ),
      ),
    );
  }
}
