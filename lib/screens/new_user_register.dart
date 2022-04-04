import 'package:flutter/material.dart';
import 'package:justatry/screens/loginpage.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF3F60A0),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Register',
          style: TextStyle(color: Color(0xFF3F60A0)),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 35.0, right: 35.0),
            child: TextFormField(
              validator: (value) {},
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 35.0, left: 35.0),
            child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: 'Fullname',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 35.0, left: 35.0),
            child: TextFormField(
                cursorColor: Color(0xFF3F60A0),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, right: 35.0, left: 35.0, bottom: 45.0),
            child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                )),
          ),
          Text(
            'By continuing, you agree with our terms &',
            style: TextStyle(fontSize: 15.0),
          ),
          Text('Conditions and Privacy Policy', style: TextStyle(fontSize: 15)),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 35.0, right: 35.0, bottom: 100),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              elevation: 8.0,
              minWidth: 400.0,
              height: 64,
              color: Color(0xFF3F60A0),
              onPressed: () {
                print('login');
              },
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Text(
              'Already have an account?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Login here',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF3F60A0),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
