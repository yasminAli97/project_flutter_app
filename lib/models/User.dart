import 'package:firebase_database/firebase_database.dart';
import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';

class User {

  /*String _id;
  String _fullname;
//  String _username;
//  String _password;
//  String _email;
//  String _image ;
//  int _score;
//  int _age;
//  List<Category> _categories;
//  List<Task> _tasks;
//  List<User> _friends;
User(this._fullname,this._id);

// add to database
User.map(dynamic obj){
  this._id = obj["id"];
  this._fullname = obj["fullname"];
}

//get da from user
String get id => _id;
String get fullname => _fullname;

//retrive data from db
User.fromSnapShot(DataSnapshot snapshot){
  _id = snapshot.value["id"];
  _fullname = snapshot.value["fullname"];
}

*/

  final String uid;

  User({this.uid});




}