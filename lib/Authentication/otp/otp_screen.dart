/*import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static var routeName;

  //Future<FirebaseApp> _initializeFirebase() async {
    //FirebaseApp firebaseApp = await Firebase.initializeApp();
    //return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Authentication'),
      ),
      body: FutureBuilder(
       // future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                Text('Login'),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}*/
