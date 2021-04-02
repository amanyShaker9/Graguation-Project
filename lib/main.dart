import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'screens/add_lecature_screen.dart';
import 'screens/lecature_info_screen.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/doctor_home_screen.dart';
import 'screens/add_course_screen.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          scaffoldBackgroundColor: Colors.white ,
          primarySwatch: Colors.purple,
          accentColor:Color.fromRGBO(14, 5, 110,5) ,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 25.0,color:Colors.white),
            button: TextStyle(fontSize:50.0 ,color:Color.fromRGBO(14, 5, 110,5) ),
          ) ) ,
      initialRoute: FirstScreen.id,
      routes: {
        FirstScreen.id:(context) =>  FirstScreen(),
        SecondScreen.id :(context)=> SecondScreen(),
        ThirdScreen.id:(context)=> ThirdScreen(),
        FourthScreen.id:(context)=> FourthScreen(),
        AddCourseScreen.id:(context)=> AddCourseScreen(),
        AddLecature.id:(context)=>AddLecature(),
        LecatureInfo.id:(context)=>LecatureInfo(),
      },
    );
  }
}