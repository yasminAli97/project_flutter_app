import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/screens/addTaskScreen.dart';
import 'package:projectflutterapp/screens/categoriesScreen.dart';
import 'package:projectflutterapp/screens/defaultCategory.dart';
import 'package:projectflutterapp/screens/task_attribute.dart';

import 'constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
  home: categoriesScreen(),
//    routes: <String, WidgetBuilder>{
//       HOME_SCREEN: (BuildContext context) => MyHomePage(),
//
//    }
    );
  }
}

