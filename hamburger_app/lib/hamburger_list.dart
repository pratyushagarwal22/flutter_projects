import 'package:flutter/material.dart';
import 'burger_page.dart';

class HamburgersList extends StatefulWidget {
  final int row;
  HamburgersList({required this.row});

  @override
  _HamburgersListState createState() => _HamburgersListState();
}

class _HamburgersListState extends State<HamburgersList> {

  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget burgerImage1 = Container(
      height: 95,
      child: Image.asset('images/burger-1.png'),
    );

    Widget burgerImage2 = Container(
      height: 120,
      child: Image.asset('images/burger-2.png'),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 320 : 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 20, right: index == items - 1 ? 20 : 0),
                  height: 240,
                  width: 200,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reverse ? 'Animated Borgor' : 'Real Borgor',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'Rs. 250',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    margin: EdgeInsets.all(7.5),
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 70 : 60,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: reverse ? burgerImage1 : burgerImage2,
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
