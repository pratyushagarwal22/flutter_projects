import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hamburger_list.dart';
import 'burger_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Colors.teal,
        appBarTheme: AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
        ),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orangeAccent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Hamburger(),
      routes: {
        BurgerPage.tag: (_) => BurgerPage(),
      },
    );
  }
}

class Hamburger extends StatefulWidget {

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Deliver Me'),
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              ),
            ],
          ),
          Header(),
          Categories(),
          HamburgersList(row: 1),
          HamburgersList(row: 2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: <Widget>[
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
