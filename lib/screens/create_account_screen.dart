import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool passwordStatus = false;
  FaIcon passwordIcon = const FaIcon(FontAwesomeIcons.solidEye);
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text('Create Account',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Fill your information below or register with your social account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter Your Name',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter Your Email',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: TextField(
                  obscureText: passwordStatus,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter Your Password',
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (passwordStatus == false) {
                            setState(() {
                              passwordStatus = !passwordStatus;
                              passwordIcon = const FaIcon(
                                FontAwesomeIcons.solidEyeSlash,
                                size: 15,
                              );
                            });
                          } else {
                            setState(() {
                              passwordStatus = !passwordStatus;
                              passwordIcon =
                                  const FaIcon(FontAwesomeIcons.solidEye);
                            });
                          }
                        },
                        icon: passwordIcon,
                        iconSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (bool) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      }),
                  InkWell(
                    onTap: () {
                      //Navigate to verfication page
                    },
                    child: const Text(
                      "Agree with ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.brown,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.brown),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(330, 50),
                      backgroundColor: Colors.brown),
                  onPressed: () {
                    //Navigate to Other Screen
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color.fromARGB(244, 158, 158, 158),
                      thickness: 1,
                      endIndent: 10,
                    )),
                    Text(
                      'Or sign up with  ',
                      style:
                          TextStyle(color: Color.fromARGB(244, 158, 158, 158)),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color.fromARGB(244, 158, 158, 158),
                      thickness: 1,
                      endIndent: 10,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: size.width * 0.5,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.apple),
                    ),
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.google),
                    ),
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.facebook),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                      style: TextStyle(fontWeight: FontWeight.w400)),
                  InkWell(
                    onTap: () {
                      //Navigate To Create Account Page
                      Navigator.pushNamed(context, '/createaccountscreen');
                    },
                    child: const Text(" Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.brown,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.brown)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
