import 'dart:async';
import 'package:connect/util/display_image_widget.dart';
import 'package:connect/util/edit_email.dart';
import 'package:connect/util/edit_image.dart';
import 'package:connect/util/edit_name.dart';
import 'package:connect/util/edit_phone.dart';
import 'package:connect/util/edit_id.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:connect/util/model_theme.dart';
import 'usr/user.dart';
import 'usr/user_data.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;
    return Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            const Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
            InkWell(
                onTap: () {
                  navigateIDPage(const EditImagePage());
                },
                child: DisplayImage(
                  imagePath: user.image,
                  onPressed: () {},
                )),
            buildUserInfoDisplay(user.name, 'Name', const EditNameFormPage()),
            buildUserInfoDisplay(
                user.phone, 'Phone', const EditPhoneFormPage()),
            buildUserInfoDisplay(
                user.email, 'Email', const EditEmailFormPage()),
            buildUserInfoDisplay(user.id, 'ID', const EditIDFormPage()),
            // buildAbout(user),
            const SizedBox(
              height: 20,
            ),
            IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                })
          ]),
        ),
      );
    });
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateIDPage(editPage);
                            },
                            child: Text(
                              getValue,
                              style: const TextStyle(fontSize: 16, height: 1.4),
                            ))),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ]))
            ],
          ));

  // Widget builds the About Me Section
  Widget buildAbout(User user) => Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text(
          //   'Tell Us About Yourself',
          //   style: TextStyle(
          //     fontSize: 15,
          //     fontWeight: FontWeight.w500,
          //     color: Colors.grey,
          //   ),
          // ),
          const SizedBox(height: 1),
          Row(children: [
            Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    ))),
          ])
        ],
      ));

  // Refrshes the Page after updating user info.
  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  // Handles navigation and prompts refresh.
  void navigateIDPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
