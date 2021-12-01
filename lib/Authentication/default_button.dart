import 'package:flutter/material.dart';
import 'package:shop_app/Authentication/sign_in/sign_in_screen.dart';
import '/constants.dart';
import '/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
            primary: kPrimaryColor, padding: EdgeInsets.fromLTRB(20, 15, 20, 15)
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
        onPressed: () {
          Navigator.pushNamed(context, SignInScreen.routeName);
        },
        child: const Text('Continue'),
      ),
    );
  }
}
