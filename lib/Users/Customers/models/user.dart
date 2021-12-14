//import 'dart:html';

import 'cart_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const CART = "cart";

  String id;
  String name;
  String email;
  List<CartItemModel> cart;

  UserModel({this.id, this.name, this.email, this.cart});

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data();
    email = snapshot.data();
    id = snapshot.data();
    cart = _convertCartItems(snapshot.data() ?? []);
  }

  List<CartItemModel> _convertCartItems(List cartFomDb) {
    List<CartItemModel> _result = [];
    if (cartFomDb.length > 0) {
      cartFomDb.forEach((element) {
        _result.add(CartItemModel.fromMap(element));
      });
    }
    return _result;
  }

  List cartItemsToJson() => cart.map((item) => item.toJson()).toList();
}
