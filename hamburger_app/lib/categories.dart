import 'package:flutter/material.dart';

class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int items = 10;
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) => Stack(
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                      height: 80,
                      width: 80,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSelectedItem = index;
                          });
                        },
                        child: Card(
                          child: Icon(
                            Icons.fastfood,
                            color: index == currentSelectedItem ? Colors.white : Colors.black.withOpacity(0.7),
                          ),
                          color: index == currentSelectedItem ? Colors.black.withOpacity(0.7) : Colors.white,
                          elevation: 3,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                    width: 80,
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        Text('Borgor'),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
