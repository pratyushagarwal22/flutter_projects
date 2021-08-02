import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Icon Test App'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Image.asset('assets/project-image.jpg'),
        ),
      ),
    );
  }
}
