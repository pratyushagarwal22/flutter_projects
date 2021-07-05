import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first flutter app'),
        centerTitle: true,
        backgroundColor: Colors.red.shade300,
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/space-2.jpg')),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.blue.shade200,
              child: Text('1'),
            ),
          ),
          Expanded(
            child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.blue.shade400,
            child: Text('2'),
            ),
          ),
          Expanded(
            child: Container(
            padding: EdgeInsets.all(30),
            color: Colors.blue.shade600,
            child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('click'),
        backgroundColor: Colors.red.shade600,
      ),
    );
  }
}

