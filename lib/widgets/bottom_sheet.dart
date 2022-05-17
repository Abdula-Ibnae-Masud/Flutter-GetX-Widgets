import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  // In the project if you want to do only state management, then you are not
  // required to return Get MaterialApp, You can use MaterialApp. But in your project
  // if you want to perform root management, if you want to display Snackbar, DialogeBar
  // BottomSheet without using the context, then you need to use Get MatarialApp.

  @override
  Widget build(BuildContext context) {
    // "MaterialApp" Which is provided by GetX library

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Bottom Sheet"),
              onPressed: () {
                Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text("Light Theme"),
                          onTap: () => {Get.changeTheme(ThemeData.light())},
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text("Dark Theme"),
                          onTap: () => {Get.changeTheme(ThemeData.dark())},
                        )
                      ],
                    ),
                    // barrierColor: Colors.lightGreenAccent,
                    backgroundColor: Colors.blueAccent,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0)));
              },
            )
          ],
        ),
      ),
    );
  }
}
