import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:clothing_store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController cardCont = TextEditingController();
    return Scaffold(
      appBar: const CustomScreenAppBar(
        title: "Payment Methods",
        isLeading: true,
        isActionable: false,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Credit & Debit Card",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                CustomTextField(
                  controller: cardCont,
                  labelText: '',
                  hintText: 'Add New Card',
                  obscureText: false,
                  prefixIcon: const Icon(Iconsax.card),
                  suffixIcon: Text(
                    "Link",
                    style: TextStyle(
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "More Payment Options",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                CustomTextField(
                  controller: cardCont,
                  labelText: '',
                  hintText: 'PayPal',
                  obscureText: false,
                  prefixIcon: const Icon(FontAwesomeIcons.paypal),
                  suffixIcon: Text(
                    "Link",
                    style: TextStyle(
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: cardCont,
                  labelText: '',
                  hintText: 'Apple Pay',
                  obscureText: false,
                  prefixIcon: const Icon(FontAwesomeIcons.apple),
                  suffixIcon: Text(
                    "Link",
                    style: TextStyle(
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
