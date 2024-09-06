import 'package:clothing_store_app/screens/authentication_screens/verification_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_elevated_button.dart';
import 'package:clothing_store_app/widgets/custom_screen_heading.dart';
import 'package:clothing_store_app/widgets/custom_sign_in_and_up_text.dart';
import 'package:clothing_store_app/widgets/custom_text_field.dart';
import 'package:clothing_store_app/widgets/social_sign_in_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
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
            children: [
              const SizedBox(
                height: 120,
              ),
              const CustomScreenHeading(
                  mainHeading: 'Sign In',
                  subHeading: "Hi! Welcome back you've been missed."),
              const SizedBox(
                height: 80,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                    controller: emailCont,
                    obscureText: false,
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                  )),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: CustomTextField(
                  controller: passCont,
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  obscureText: passwordStatus,
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
                            size: 15,
                            color: AppColors.primaryIconColor,
                          );
                        });
                      }
                    },
                    icon: passwordIcon,
                    iconSize: 15,
                  ),
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
              CustomElevatedButton(
                btnText: 'Sign In',
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
              SocialSignInButtons(width: size.width * 0.5),
              const SizedBox(
                height: 40,
              ),
              CustomSignInAndUpText(
                  onTap: () {
                    //Navigate To Create Account Page
                    Navigator.pushNamed(context, '/createaccountscreen');
                  },
                  mainText: "Don't have an account? ",
                  clickableText: 'Sign Up')
            ],
          ),
        ),
      ),
    );
  }
}
