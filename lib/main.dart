import 'package:clothing_store_app/screens/authentication_screens/change_password_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/complete_profile_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/create_account_screen.dart';
import 'package:clothing_store_app/screens/cart_screen.dart';
import 'package:clothing_store_app/screens/chat_screen.dart';
import 'package:clothing_store_app/screens/help_center_screen.dart';
import 'package:clothing_store_app/screens/home_page_screen.dart';
import 'package:clothing_store_app/screens/invite_friends_screen.dart';
import 'package:clothing_store_app/screens/log_out_screen.dart';
import 'package:clothing_store_app/screens/main_screen.dart';
import 'package:clothing_store_app/screens/my_orders_screen.dart';
import 'package:clothing_store_app/screens/onboarding_screen_1.dart';
import 'package:clothing_store_app/screens/authentication_screens/sign_in_screen.dart';
import 'package:clothing_store_app/screens/payment_method_screen.dart';
import 'package:clothing_store_app/screens/privacy_policy_screen.dart';
import 'package:clothing_store_app/screens/product_details.dart';
import 'package:clothing_store_app/screens/profile_details_screen.dart';
import 'package:clothing_store_app/screens/profile_screen.dart';
import 'package:clothing_store_app/screens/settings_screen.dart';
import 'package:clothing_store_app/screens/splash_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/verification_screen.dart';
import 'package:clothing_store_app/screens/welcome_screen.dart';
import 'package:clothing_store_app/screens/wishlist_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              headlineSmall: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400))),
      home: const MainScreen(),
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/welcomescreen': (context) => const WelcomeScreen(),
        '/onboardingscreen1': (context) => const OnboardingScreen(),
        '/signinscreen': (context) => const SignInScreen(),
        '/createaccountscreen': (context) => const CreateAccountScreen(),
        '/verficationscreen': (context) => const VerificationScreen(),
        '/changepasswordscreen': (context) => const ChangePasswordScreen(),
        '/completeprofilescreen': (context) => const CompleteProfileScreen(),
        '/mainscreen': (context) => const MainScreen(),
        '/homescreen': (context) => const HomePageScreen(),
        '/wishlistscreen': (context) => const WishlistScreen(),
        '/cartscreen': (context) => const CartScreen(),
        '/chatscreen': (context) => const ChatScreen(),
        '/profilescreen': (context) => const ProfileScreen(),
        '/profile_details_screen': (context) => const ProfileDetailsScreen(),
        '/payment_method_screen': (context) => const PaymentMethodScreen(),
        '/my_orders_screen': (context) => const MyOrdersScreen(),
        '/settings_screen': (context) => const SettingsScreen(),
        '/help_center_screen': (context) => const HelpCenterScreen(),
        '/privacy_policy_screen': (context) => const PrivacyPolicyScreen(),
        '/invite_friends_screen': (context) => const InviteFriendsScreen(),
        '/log_out_screen': (context) => const LogOutScreen(),
        '/product_details': (context) => const ProductDetails(),
      },
    );
  }
}
