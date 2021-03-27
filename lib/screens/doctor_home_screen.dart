import 'package:flutter/material.dart';
import 'add_course_screen.dart';
import '../widgets/subject_dev.dart';

class FourthScreen extends StatefulWidget {
  static const String id = 'doctor_home_screen';
  String text;
  FourthScreen({Key key, @required this.text}) : super(key: key);
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(70, 71, 237, 20),
        title: Text('attendance'),
      ),
      drawer: Drawer(
        child: Column(
          children: [Text('ggg')],
        ),
      ),
      body: SubjectDev(
          subjectName:'embedded',
        doctorName:'dr khaled',
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(70, 71, 237, 20),
          onPressed: () {
            Navigator.pushNamed(context, AddCourseScreen.id);
          }),
    );
  }
}
