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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DONE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        scaffoldBackgroundColor: Colors.black,
        dialogBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        cardColor: Colors.white70,
        accentColor: Colors.black,
      ),
      home:FirstPage(), //MyWidget(),
        );

    /*return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Wrapper(),
        */
    /*routes: <String, WidgetBuilder>{
            HOME_SCREEN: (BuildContext context) => HomeScreen(),
            ADD_NEW_TASK: (BuildContext context) => AddNewTaskScreen(),
            CATEGORIES_SCREEN: (BuildContext context) => CategoriesScreen(),
            //WRAPPER_SCREEN: (BuildContext context) => Wrapper(),
          }*//*),
    );*/


  }
}
