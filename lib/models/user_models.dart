import 'package:firebase_database/firebase_database.dart';

class UserModel {
  String? phone;
  String? name;
  String? id;
  String? email;

  UserModel({this.name, this.phone, this.email, this.id});
  UserModel.fromSnapshot(DataSnapshot snap) {
    id = snap.key;
    name = (snap.value as dynamic)["PhoneNumber"];
    email = (snap.value as dynamic)["Email"];
    name = (snap.value as dynamic)["UserName"];
  }
}
