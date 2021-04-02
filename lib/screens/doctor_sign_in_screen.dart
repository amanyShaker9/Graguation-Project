import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'doctor_home_screen.dart';
import '../widgets/my_card.dart';

class ThirdScreen extends StatefulWidget {
  static const String id = 'doctor_sign_in_screen';

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  FirebaseAuth instant =FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.person_outline,
                hintedText: 'name',

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.email,
                hintedText: 'mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.account_box,
                hintedText: 'ssn',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.phone,
                hintedText: 'phone',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.vpn_key,
                hintedText: 'password',
              ),
            ),
            Container(
                margin: EdgeInsets.all(15.0),
                width: 120.0,
                height: 50.0,
                child: FlatButton(
                    color: Color.fromRGBO(70, 71, 237, 20),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, FourthScreen.id);
                    },
                    child: Text(
                      'signin',
                      style: TextStyle(fontSize: 25.0),
                    )))
          ],
        ),
      ),
    );
  }
}
