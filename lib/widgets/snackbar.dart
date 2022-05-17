import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({Key? key}) : super(key: key);

  // In the project if you want to do only state management, then you are not
  // required to return Get MaterialApp, You can use MaterialApp. But in your project
  // if you want to perform root management, if you want to display Snackbar, DialogeBar
  // BottomSeat without using the context, then you need to use Get MatarialApp.

  @override
  Widget build(BuildContext context) {
    // "MaterialApp" Which is provided by GetX library

    //title: "Snackbar",

    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "Snackbar Title", "This will show Snackbar Message",
                    snackPosition: SnackPosition.TOP,
                    colorText: Colors.indigo,
                    backgroundColor: Colors.black,
                    borderRadius: 30,
                    borderColor: Colors.green,
                    borderWidth: 3,
                    margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
                    isDismissible: true,
                    icon: const Icon(
                      Icons.send,
                      color: Colors.indigoAccent,
                    ));
              },
              child: const Text('Show SnackBar'),
            )
          ],
        ),
      ),
    );
  }
}
