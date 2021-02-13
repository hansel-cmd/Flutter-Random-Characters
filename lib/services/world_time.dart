import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {

  String location;
  String time;
  String url;
  

  WorldTime({ this.location, this.url });

  Future<void> getTime() async {

    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    // print(data);

    String offset = data['utc_offset'].substring(1, 3);
    String datetime = data['datetime'];

    DateTime dt = DateTime.parse(datetime);
    dt = dt.add(Duration(hours: int.parse(offset)));

    time = dt.toString();
  }
}