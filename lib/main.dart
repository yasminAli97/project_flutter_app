import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/screens/addTaskScreen.dart';
import 'package:projectflutterapp/screens/categoriesScreen.dart';
import 'package:projectflutterapp/screens/categoryDetailsScreen.dart';
import 'package:projectflutterapp/screens/home_screen.dart';
import 'package:projectflutterapp/screens/task_attribute.dart';
import 'package:projectflutterapp/screens/friends.dart';
import 'package:projectflutterapp/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:projectflutterapp/services/auth.dart';
import 'package:projectflutterapp/models/User.dart';
import 'constants/constants.dart';
import 'package:projectflutterapp/screens/first_page.dart';
import 'package:projectflutterapp/screens/ProfilePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graduation Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        primarySwatch: Colors.purple,//Color(0xffBBB4C9).withOpacity(.35),
        cardColor: Colors.white70,
        accentColor: Colors.purple,//Color(0xffBBB4C9).withOpacity(.35),
      ),
      home:FirstPage(), //MyWidget(),
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => HomeScreen(),
        ADD_NEW_TASK: (BuildContext context) => AddNewTaskScreen(),
        CATEGORIES_SCREEN: (BuildContext context) => CategoriesScreen(),
      }
        );

  }
}
