import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0.obs; // Individuals variables as Rx=Reactive
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is the Homepage",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  "The Homepage Counter : $count",
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                "Dialog Page",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              onPressed: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                "Increment",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              onPressed: () {
                increment();
                /* Get.to(const DialogbarWidget());
                Could not navigate to initial route.
                The requested route name was: "/MyHomePage"
                There was no corresponding route in the app, and therefore the  
                initial route specified will be ignored and "/" will be used instead.*/
              },
            ),
            Text(
              "The random number is : ${Get.arguments['price']}",
              style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
