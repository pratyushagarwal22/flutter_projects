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
        backgroundColor: Colors.blue.shade900,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://image.shutterstock.com/image-vector/meme-dog-dogecoin-doge-cryptocurrency-260nw-1971113219.jpg'),
              ),
              Text(
                'Doge Dog',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                ),
              ),
              Text(
                'DOGECOIN MINER',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue.shade900,
                      ),
                      SizedBox(width: 30),
                      Text(
                        '+91 99999 88888',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1.5,
                          color: Colors.blue.shade900,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue.shade900,
                    ),
                    title: Text(
                      'dogedog@dogecoin.com',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: Colors.blue.shade900,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
