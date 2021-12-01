import 'package:flutter/material.dart';
import 'package:shop_app/Authentication/sign_in/components/sign_form.dart';

//import 'components/body.dart';
import 'components/sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SignForm(),
      //Body(),
    );
  }
}
