import 'package:flutter/material.dart';

class EditLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wew"),
      ),
      body: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        icon: Icon(Icons.edit_location), 
        label: Text("Edit Location"))
    );
  }
}