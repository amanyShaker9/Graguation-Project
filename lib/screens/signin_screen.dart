import 'package:flutter/material.dart';
import 'doctor_home_screen.dart';
import '../widgets/mycard.dart';

class ThirdScreen extends StatefulWidget {
  static const String id = 'signin_screen';
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
                txt: 'name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.email,
                txt: 'mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.account_box,
                txt: 'ssn',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.phone,
                txt: 'phone',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyCard(
                data: Icons.vpn_key,
                txt: 'password',
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
