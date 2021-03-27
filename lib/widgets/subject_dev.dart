import 'package:flutter/material.dart';
import '../screens/add_lecature_screen.dart';
class SubjectDev extends StatelessWidget {
 final  String subjectName;
  final  String doctorName;
  const SubjectDev({Key key, this.subjectName, this.doctorName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListTile(
            tileColor: Colors.deepPurpleAccent,
            title: Text(
              subjectName,
              style: TextStyle(fontSize: 30.0),
            ),
            subtitle: Text(doctorName),
            onTap: () {
              print('aaaa');
              Navigator.pushNamed(context, AddLecature.id);

            })
    );
  }
}
