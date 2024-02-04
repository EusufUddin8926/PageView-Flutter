import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';
import 'Page4.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController? _pageController;
  late var _initialIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: _initialIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _initialIndex = 0;
                        _pageController!.jumpToPage(0);
                      });
                    },
                    color:_initialIndex==0?Colors.pink: Colors.black26,
                    child: Text("Page 1"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _initialIndex = 1;
                        _pageController!.jumpToPage(1);
                      });
                    },
                    color: _initialIndex==1?Colors.pink: Colors.black26,
                    child: Text("Page 2"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _initialIndex = 2;
                        _pageController!.jumpToPage(2);
                      });
                    },
                    color: _initialIndex==2?Colors.pink: Colors.black26,
                    child: Text("Page 3"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _initialIndex = 3;
                        _pageController!.jumpToPage(3);
                      });
                    },
                    color: _initialIndex==3?Colors.pink: Colors.black26,
                    child: Text("Page 4"),
                  )
                ],
              ),
            ),
            Expanded(
                child: PageView(
              controller: _pageController,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
