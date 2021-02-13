import 'package:flutter/material.dart';
import 'package:test_app/presentation/person.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> characters = ['Mikasa Ackerman', 'Eren Jaeger', 'Levi Ackerman', 'Armin Arlelt', 'Jean Kristein', 'Historia Reiss', 'Connie Springer', 'Erwin Smith', 'Mikasa Ackerman', 'Eren Jaeger', 'Levi Ackerman', 'Armin Arlelt', 'Jean Kristein', 'Historia Reiss', 'Connie Springer', 'Erwin Smith', 'Mikasa Ackerman', 'Eren Jaeger', 'Levi Ackerman', 'Armin Arlelt', 'Jean Kristein', 'Historia Reiss', 'Connie Springer', 'Erwin Smith', 'Mikasa Ackerman', 'Eren Jaeger', 'Levi Ackerman', 'Armin Arlelt', 'Jean Kristein', 'Historia Reiss', 'Connie Springer', 'Erwin Smith'];

  List<Person> lists = [];
  Map map = {};

  List populate() {
    return lists.map((list) {
      return ListTile(
        title: Text(list.name),
        onTap: () {
          Navigator.pushNamed(context, '/personalInfo', arguments: {
            'info': list
          });
        },
      );
  }).toList();
  }

  @override
  Widget build(BuildContext context) {

    if (map.isEmpty) {
      map = ModalRoute.of(context).settings.arguments;
      lists = map['chars'];
      print(lists[0].name);
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Characters"),
        backgroundColor: Colors.grey[900]
      ),
      body: ListView(
        children: populate(),
      )
      
    );
  }
}