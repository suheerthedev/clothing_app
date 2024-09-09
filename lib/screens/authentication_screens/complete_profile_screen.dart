import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_back_button.dart';
import 'package:clothing_store_app/widgets/custom_screen_heading.dart';
import 'package:clothing_store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  TextEditingController nameCont = TextEditingController();
  final List<String> genderOptions = ['Male', 'Female', 'Pakistani', 'Other'];

  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: const CustomBackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Title and Subtitle Here
          const CustomScreenHeading(
              mainHeading: "Complete Your Profile",
              subHeading:
                  "Don't worry only you can see your personal data. No one else will be able to see it."),

          //Profile Avatar here
          SizedBox.square(
            dimension: 120,
            child: CircleAvatar(
              child: SvgPicture.asset(AppImages.profileImageIcon),
            ),
          ),
          //TextFields From Here
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 0),
                  child: CustomTextField(
                      controller: nameCont,
                      labelText: "Name",
                      hintText: "John Doe",
                      obscureText: false)),
              const SizedBox(
                height: 15,
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
                  backgroundColor: AppColors.secondaryColor),
              onPressed: () {
                //Navigate to Other Screen
                Navigator.pushReplacementNamed(context, '/homescreen');
              },
              child: Text(
                'Complete Profile',
                style: TextStyle(color: AppColors.onPrimaryTextColor),
              )),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
