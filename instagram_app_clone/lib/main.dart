import 'package:flutter/material.dart';
import 'home_page.dart';
import 'search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(Icons.home),
              color: currentPage == 0 ? Color.fromRGBO(203, 71, 101, 1) : Color.fromRGBO(40, 40, 40, 1),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                  print('Home Button Pressed: $currentPage');
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search),
              color: currentPage == 1 ? Color.fromRGBO(203, 71, 101, 1) : Color.fromRGBO(40, 40, 40, 1),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                  print('Search Button Pressed: $currentPage');
                });
              },
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ondemand_video),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.card_travel),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

