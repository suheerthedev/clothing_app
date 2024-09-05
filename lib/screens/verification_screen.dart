import 'package:clothing_store_app/widgets/custom_back_button.dart';
import 'package:clothing_store_app/widgets/custom_elevated_button.dart';
import 'package:clothing_store_app/widgets/custom_screen_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key, this.enteredEmail});
  final String? enteredEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CustomBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomScreenHeading(
              mainHeading: "Verify Code",
              subHeading:
                  "Please enter the code we just sent to ${enteredEmail ?? "@gmail.com"}"),
          OtpTextField(
            borderRadius: BorderRadius.circular(50),
            margin: const EdgeInsets.all(10),
            fieldWidth: 60,
            fieldHeight: 50,
            numberOfFields: 4,
            focusedBorderColor: Colors.brown,
            showFieldAsBox: true,
            onSubmit: (String verificationCode) {
              //Push to Change Pass Screen
              // Navigator.push(context, route)
            },
          ),
          const Column(
            children: [
              Text("Didn't receive OTP?",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              Text("Resend code",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline)),
            ],
          ),
          CustomElevatedButton(
              btnText: 'Verify',
              onPressed: () {
                //Navigate to Other Screen
                Navigator.pushNamed(context, '/changepasswordscreen');
              }),
          const SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
