import 'package:flutter/material.dart';
import 'dart:async';
import 'first_screen.dart';
class SplashScreen extends StatefulWidget {
  static const String id ='splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),

    );
  }

  startTime()async{
    var duration=new Duration(seconds: 6);
    return new Timer(duration,route);
  }
  route(){
    Navigator.pushNamed(context,FirstScreen.id);

  }
  initScreen(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/view2.png'),
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.deepPurple,
              strokeWidth: 1,
            ),
          ],
        ),
      ),
    );



  }
}
