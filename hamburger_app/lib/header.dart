import 'package:flutter/material.dart';

class Header extends StatefulWidget {

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: size.height/5,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                    ),
                    boxShadow: [
                      BoxShadow(
                        // offset: Offset(0, 0), // Just to show us how to use it.
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white70,
                            radius: 35,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/dog.jpg'),
                              radius: 30,
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                'Burger Maniac',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black54,
                                ),
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'Rs. 1000',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'What does your tummy crave?',
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],),
    );
  }
}
