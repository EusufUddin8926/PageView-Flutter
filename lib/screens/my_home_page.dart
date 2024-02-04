import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
           child: Column(
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: Colors.pink,
                  child: Text("Page 1"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
