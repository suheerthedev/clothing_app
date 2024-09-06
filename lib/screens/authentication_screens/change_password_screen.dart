import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_back_button.dart';
import 'package:clothing_store_app/widgets/custom_elevated_button.dart';
import 'package:clothing_store_app/widgets/custom_screen_heading.dart';
import 'package:clothing_store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController passCont = TextEditingController();
  TextEditingController confirmPassCont = TextEditingController();
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
        leading: const CustomBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomScreenHeading(
              mainHeading: "New Password",
              subHeading:
                  "Your new password must be different from previously used passwords."),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                    controller: passCont,
                    labelText: "Password",
                    hintText: "●●●●●●●●●",
                    obscureText: passwordStatus,
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
                            passwordIcon = const FaIcon(
                                FontAwesomeIcons.solidEye,
                                size: 15);
                          });
                        }
                      },
                      icon: passwordIcon,
                      iconSize: 15,
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                    controller: confirmPassCont,
                    labelText: "Confirm Password",
                    hintText: "●●●●●●●●●",
                    obscureText: confirmPasswordStatus,
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
                            confirmPasswordIcon = const FaIcon(
                                FontAwesomeIcons.solidEyeSlash,
                                size: 15);
                          });
                        }
                      },
                      icon: confirmPasswordIcon,
                      iconSize: 15,
                    ),
                  )),
            ],
          ),
          CustomElevatedButton(
              btnText: "Create New Password",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        "Password Changed Successfully",
                        textAlign: TextAlign.center,
                      ),
                      titleTextStyle: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                );
                Future.delayed(const Duration(seconds: 2), () {
                  //Close Dialog
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();

                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, '/signinscreen');
                });
              }),
          const SizedBox(
            height: 250,
          )
        ],
      ),
    );
  }
}
