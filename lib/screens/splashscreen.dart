import 'package:flutter/material.dart';
import 'package:justatry/screens/loginpage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(
      milliseconds: 1500,
    ));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (contex) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/book.png.png'))),
      )),
    );
  }
}
