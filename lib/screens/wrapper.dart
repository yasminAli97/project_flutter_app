/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication/authenticate.dart';
import 'home_screen.dart';
import 'package:projectflutterapp/models/User.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

   // return either home or Authenticate widget
    if(user == null){
      return Authenticate();
    }else{
     return HomeScreen();
    }
  }
}
*/
