import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  MyCard({@required this.data, this.hintedText});
   IconData data;
   String hintedText;
   String textFieldValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
        child: ListTile(
          leading: Icon(
            data,
            color: Colors.blue.shade100,
          ),
          title: TextField(
            decoration: InputDecoration(hintText: hintedText,border: InputBorder.none,hintStyle:TextStyle(color: Colors.blue.shade100), ),
          onChanged: (value){
            textFieldValue=value;
          },

          ),
        ));
  }
}