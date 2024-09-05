import 'package:clothing_store_app/screens/verification_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailCont = TextEditingController();
  bool passwordStatus = true;
  FaIcon passwordIcon = const FaIcon(FontAwesomeIcons.solidEyeSlash);
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
                height: 120,
              ),
              Text('Sign In',
                  style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Hi! Welcome back, you've been missed.",
                style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: TextField(
                  controller: emailCont,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: AppColors.primaryTextColor),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter Your Email',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryColor),
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
                          if (passwordStatus == true) {
                            setState(() {
                              passwordStatus = !passwordStatus;
                              passwordIcon = FaIcon(
                                FontAwesomeIcons.solidEye,
                                color: AppColors.primaryIconColor,
                                size: 15,
                              );
                            });
                          } else {
                            setState(() {
                              passwordStatus = !passwordStatus;
                              passwordIcon = FaIcon(
                                FontAwesomeIcons.solidEyeSlash,
                                color: AppColors.primaryIconColor,
                              );
                            });
                          }
                        },
                        icon: passwordIcon,
                        color: AppColors.primaryIconColor,
                        iconSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: AppColors.primaryColor),
                      )),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      //Navigate to verfication page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerificationScreen(
                              enteredEmail: emailCont.text.toString(),
                            ),
                          ));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColors.secondaryTextColor,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.secondaryTextColor),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(330, 50),
                      backgroundColor: AppColors.secondaryColor),
                  onPressed: () {
                    //Navigate to Other Screen
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: AppColors.onPrimaryTextColor),
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
                      indent: 10,
                      endIndent: 10,
                    )),
                    Text(
                      'Or sign in with',
                      style:
                          TextStyle(color: Color.fromARGB(244, 158, 158, 158)),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color.fromARGB(244, 158, 158, 158),
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.apple,
                          color: AppColors.primaryIconColor),
                    ),
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.google,
                          color: AppColors.primaryIconColor),
                    ),
                    CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.facebook,
                          color: AppColors.primaryIconColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w400)),
                  InkWell(
                    onTap: () {
                      //Navigate To Create Account Page
                      Navigator.pushNamed(context, '/createaccountscreen');
                    },
                    child: Text(" Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondaryTextColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.secondaryTextColor)),
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
