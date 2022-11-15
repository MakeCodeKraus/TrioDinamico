import 'package:triodinamico/widgets/container.dart';
import 'package:triodinamico/widgets/reusable.dart';
import 'package:triodinamico/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:triodinamico/screens/signin.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("FFFB90"),
          hexStringToColor("F2D670"),
          hexStringToColor("F2D547")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                const SizedBox(
                  height: 30,
                ),
                signInSignUpButton(context, true, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignIn();
                  }));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
