import 'package:flutter/material.dart';
import 'signin_screen.dart';
import 'package:flutter/services.dart';
import '../widgets/mycard.dart';

class SecondScreen extends StatefulWidget {
  static const String id = 'second_screen';
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // color: Color.fromRGBO(125, 151, 244,10.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyCard(
                data: Icons.email,
                txt: "email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MyCard(
                data: Icons.vpn_key,
                txt: 'password',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 50.0,
                    child: FlatButton(
                      color: Color.fromRGBO(70, 71, 237, 20),
                      textColor: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 120.0,
                    height: 50.0,
                    child: FlatButton(
                      color: Color.fromRGBO(70, 71, 237, 20),
                      textColor: Colors.white,
                      child: Text(
                        'sign in',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, ThirdScreen.id);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
