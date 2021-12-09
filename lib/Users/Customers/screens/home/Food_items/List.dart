//import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

class ListPage {
  final CollectionReference profileList =
      FirebaseFirestore.instance.collection('Food');

  static var routeName;

  Future updateFoodList(
      String name, String image, int score, String uid) async {
    return await profileList.doc(uid).update({'name': name, 'image': image});
  }

  Future getFoodList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
