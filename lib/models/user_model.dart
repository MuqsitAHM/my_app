import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const NUMBER = 'number'; //to avoid any typos
  static const ID = 'id'; //to avoid any typos

  String? _number;
  String? _id;

  //getter for the

  String? get number => _number;
  String? get id => _id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    // 4, around 10
    _number = snapshot.data() as dynamic;
    [
      NUMBER
    ]; // _number = snapshot.data()[NUMBER]; some null safety error for both the line, so used as dynamic
    _id = snapshot.data() as dynamic;
    [ID];
  }
}
