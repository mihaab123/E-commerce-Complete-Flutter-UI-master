import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/client_controller.dart';
import 'package:shop_app/controllers/firebase_auth_controller.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  final FirebaseAuthController _firebaseAuthController =
      Get.find<FirebaseAuthController>();
  final ClientController _clientController = Get.find<ClientController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "PF_my_account".tr,
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "PF_notifications".tr,
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "PF_settings".tr,
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "PF_help".tr,
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "BTN_logout".tr,
            icon: "assets/icons/Log out.svg",
            press: () async {
              await _firebaseAuthController.signOut();
              Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
