import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  MyCard({@required this.data, this.txt});
  final IconData data;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
        child: ListTile(

          leading: Icon(
            data,
            color: Colors.blue.shade100,
          ),
          title: Text(
            txt,
            style: TextStyle(color: Colors.blue.shade100),
          ),
        ));
  }
}