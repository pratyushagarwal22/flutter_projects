import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PratyushCard(),
  ));
}

class PratyushCard extends StatefulWidget {
  const PratyushCard({Key? key}) : super(key: key);

  @override
  _PratyushCardState createState() => _PratyushCardState();
}

class _PratyushCardState extends State<PratyushCard> {

  int amazingnesslevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text('Pratyush ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade800,
        elevation: 0.0, // getting rid of the drop shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            amazingnesslevel+=1;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img1.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey.shade800,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Pratyush Agarwal',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT AMAZING-NESS LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$amazingnesslevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'amazing@gmail.com',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}

