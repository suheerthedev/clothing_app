import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool passwordStatus = false;
  bool confirmPasswordStatus = true;
  FaIcon passwordIcon = const FaIcon(FontAwesomeIcons.solidEye);
  FaIcon confirmPasswordIcon = const FaIcon(FontAwesomeIcons.solidEyeSlash);
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 0.5)),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    //Navigate to previous screen
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            children: [
              Text('New Password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Your new password must be different from previously used passwords.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                child: TextField(
                  obscureText: passwordStatus,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '●●●●●●●●●',
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 0),
                child: TextField(
                  obscureText: confirmPasswordStatus,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '●●●●●●●●●',
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (confirmPasswordStatus == true) {
                            setState(() {
                              confirmPasswordStatus = !confirmPasswordStatus;
                              confirmPasswordIcon = const FaIcon(
                                FontAwesomeIcons.solidEye,
                                size: 15,
                              );
                            });
                          } else {
                            setState(() {
                              confirmPasswordStatus = !confirmPasswordStatus;
                              confirmPasswordIcon =
                                  const FaIcon(FontAwesomeIcons.solidEyeSlash);
                            });
                          }
                        },
                        icon: confirmPasswordIcon,
                        iconSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(340, 50),
                  backgroundColor: Colors.brown),
              onPressed: () {
                //Navigate to Other Screen
              },
              child: const Text(
                'Create New Password',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 250,
          )
        ],
      ),
    );
  }
}
