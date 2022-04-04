import 'package:flutter/material.dart';
import 'package:justatry/colors/color.dart';
import 'package:justatry/screens/homepage.dart';
import 'package:justatry/screens/new_user_register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  bool _obscureText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xFF3F60A0);
      }
      return Colors.grey;
    }

    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
            child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('assets/logo.png')),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 88.0),
                      child: Expanded(
                          child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 70),
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey[200],
                                ),
                                child: TextField(
                                  cursorColor: primary,
                                  decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.email,
                                      color: primary,
                                    ),
                                    hintText: "hello@reallygreatsite.com",
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 30),
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey[200],
                                ),
                                child: TextFormField(
                                  obscureText: _obscureText,
                                  cursorColor: primary,
                                  decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.lock,
                                      color: primary,
                                    ),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      child: Icon(
                                        _obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: primary,
                                      ),
                                    ),
                                    hintText: "Password",
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 22.0, right: 20, top: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          checkColor: Colors.white,
                                          fillColor:
                                              MaterialStateProperty.resolveWith(
                                                  getColor),
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Remember me',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // Respond to button press
                                      },
                                      child: Text(
                                        "Forget password",
                                        style: TextStyle(color: primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 20, right: 20, bottom: 20),
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                elevation: 8.0,
                                minWidth: 2000.0,
                                height: 64,
                                color: primary,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Homepage()),
                                  );
                                },
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Register()),
                                      );
                                    },
                                    child: Text(
                                      ' Create an account',
                                      style: TextStyle(
                                          color: primary, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        height: 490,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                      )),
                    ),
                  ],
                ))),
      ),
    );
  }
}
