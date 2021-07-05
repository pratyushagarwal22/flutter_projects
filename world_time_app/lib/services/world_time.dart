import 'dart:core';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WorldTime {

  String location; // location to be shown in the UI
  late String time; // time in that location
  String flag; // url to access an asset flag icon
  String url; // location url for API endpoint -> /Asia/Kolkata
  late bool isDaytime; // true if day false if night

  WorldTime ({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    // implementing error handling in code
    try {
      // make a request to get the data.
      var endpoint = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      http.Response response = await http.get(endpoint);
      Map data = jsonDecode(response.body);
      // print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      String calcOffset = data['utc_offset'].substring(0,1);
      String offsetHours = data['utc_offset'].substring(1,3);
      String offsetMinutes = data['utc_offset'].substring(4,6);

      // print(calcOffset);
      // print(offsetHours);
      // print(offsetMinutes);

      //  Creating a DateTime Object
      DateTime now = DateTime.parse(datetime);
      if (calcOffset == '+') {
        now = now.add(Duration(hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));
      }
      else {
        now = now.subtract(Duration(hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));
      }

      // print(now);
      // setting the time property
      isDaytime = now.hour > 6 && now.hour < 18 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}