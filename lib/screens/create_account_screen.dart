import 'package:clothing_store_app/widgets/custom_elevated_button.dart';
import 'package:clothing_store_app/widgets/custom_screen_heading.dart';
import 'package:clothing_store_app/widgets/custom_sign_in_and_up_text.dart';
import 'package:clothing_store_app/widgets/custom_text_field.dart';
import 'package:clothing_store_app/widgets/social_sign_in_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController nameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
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
              const CustomScreenHeading(
                  mainHeading: 'Create Account',
                  subHeading:
                      "Fill your information below or register with your social account."),
              const SizedBox(
                height: 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                    controller: nameCont,
                    obscureText: false,
                    labelText: 'Name',
                    hintText: "Enter Your Name",
                  )),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                      controller: emailCont,
                      obscureText: false,
                      labelText: "Email",
                      hintText: "Enter Your Email")),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                    controller: passCont,
                    labelText: "Password",
                    hintText: "Enter Your Password",
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
                              size: 15,
                            );
                          });
                        }
                      },
                      icon: passwordIcon,
                      iconSize: 15,
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                btnText: 'Sign Up',
                onPressed: () {
                  //Navigate to other screen
                  Navigator.pushNamed(context, '/completeprofilescreen');
                },
              ),
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
              SocialSignInButtons(width: size.width * 0.5),
              const SizedBox(
                height: 30,
              ),
              CustomSignInAndUpText(
                onTap: () {
                  //Navigate To Create Account Page
                  Navigator.pushNamed(context, '/signinscreen');
                },
                mainText: 'Already have an account? ',
                clickableText: 'Sign In',
              )
            ],
          ),
        ),
      ),
    );
  }
}
