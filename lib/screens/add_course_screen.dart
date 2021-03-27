import 'package:flutter/material.dart';
import '../widgets/mycard.dart';

class AddCourseScreen extends StatefulWidget {
  static const String id = 'add_course_screen';
  @override
  _AddCourseScreenState createState() => _AddCourseScreenState();
}

class _AddCourseScreenState extends State<AddCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(70, 71, 237, 20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
              child: MyCard(
                txt: 'Academic Year',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyCard(
                txt: 'Department',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 100.0),
              child: MyCard(
                txt: 'Subject',
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              color: Color.fromRGBO(70, 71, 237, 20),
              child: FlatButton(
                child: Text(
                  'add',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}

