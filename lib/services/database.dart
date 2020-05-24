/*
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference userCollection = Firestore.instance.collection("users");

  Future updateUserData(String username,String image , String age , int score, ) async {
    return await userCollection.document(uid).setData({
      'username' : username,
      'image' : image,
      'age': age,
      'score': score

    });
  }
}*/
