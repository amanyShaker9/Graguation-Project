import 'package:flutter/material.dart';
import 'lecature_info_screen.dart';
class AddLecature extends StatelessWidget {
  static const String id='add_lecature_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(70, 71, 237, 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'subject'
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(70, 71, 237, 20),
          onPressed: () {
            Navigator.pushNamed(context, LecatureInfo.id);
          }),
    );
  }
}
