import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final List<String> genderOptions = ['Male', 'Female', 'Pakistani', 'Other'];
  String? selectedGender;
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
          //Title and Subtitle Here
          const Column(
            children: [
              Text('Complete Your Profile',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  "Don't worry only you can see your personal data. No one else will be able to see it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          //Profile Avatar here
          // CircleAvatar(
          //   child: ,
          // ),
          //TextFields From Here
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'John Doe',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 0),
                child: IntlPhoneField(
                  initialCountryCode: 'PK',
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Enter Phone Number',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(25),
                    decoration: InputDecoration(
                      labelText: 'Select Gender',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    value: selectedGender,
                    items: genderOptions.map((String gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedGender = newValue!;
                      });
                    },
                  ))
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
                'Complete Profile',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
