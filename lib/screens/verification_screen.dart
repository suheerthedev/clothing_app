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
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text('Verify Code',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Please enter the code we just sent to ${enteredEmail ?? "@gmail.com"}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
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
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 50),
                  backgroundColor: Colors.brown),
              onPressed: () {
                //Navigate to Other Screen
                Navigator.pushNamed(context, 'changepasswordscreen');
              },
              child: const Text(
                'Verify',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
