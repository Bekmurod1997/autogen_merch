import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  _TuitorialState createState() => _TuitorialState();
}

class _TuitorialState extends State<Tutorial> {
  int startNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => Text(
          index.toString(),
        ),
        itemCount: 10,
      ),
    );
  }
}
