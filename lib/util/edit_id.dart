import 'package:flutter/material.dart';
import 'package:connect/usr/user_data.dart';
import 'package:connect/util/appbar_widget.dart';

// This class handles the Page to edit the ID Section of the User Profile.
class EditIDFormPage extends StatefulWidget {
  const EditIDFormPage({Key? key}) : super(key: key);

  @override
  EditIDFormPageState createState() {
    return EditIDFormPageState();
  }
}

class EditIDFormPageState extends State<EditIDFormPage> {
  final _formKey = GlobalKey<FormState>();
  final idController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    idController.dispose();
    super.dispose();
  }

  void updateUserValue(String id) {
    user.id = id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                    width: 320,
                    child: Text(
                      "Update your ID",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 100,
                        width: 320,
                        child: TextFormField(
                          // Handles Form Validation
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your id.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              labelText: 'Your id address'),
                          controller: idController,
                        ))),
                Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false otherwise.
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )))
              ]),
        ));
  }
}
