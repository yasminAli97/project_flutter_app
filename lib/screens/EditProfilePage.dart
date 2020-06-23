/*
 import 'package:flutter/material.dart';
 import 'package:flutter/widgets.dart';
 import 'package:flutter_svg/flutter_svg.dart';
 import 'CustomAppBar.dart';
 import 'CustomTextField.dart';
 import 'ShowProfile2.dart';


 class EditProfilePage extends StatefulWidget {

   EditProfilePage({Key key}) : super(key: key);

   */
/*final String userProfileId;
  ProfilePage(this.userProfileId);*//*


   @override
   _EditProfilePageState createState() => _EditProfilePageState();
 }

 class _EditProfilePageState extends State<EditProfilePage> {

   Column createColumn(String title , int count){
     return Column(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           title,
           style: TextStyle(fontSize: 20.0 , color: Colors.purple),
         ),
       ],
     );
   }

   List<TextField> tfList;
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         body: Container(
           decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/images/backgroung1noor.png'),
                 fit: BoxFit.fill,
               )),
           child: Column(
             children: <Widget>[
               //CustomAppBar('assets/images/ic_pen_edit.svg', 'Update profile',
                 // 'assets/images/ic_back_arrow.svg',MaterialPageRoute(builder: (context) => ExpPage())),
               SizedBox(
                 height: 16,
               ),
               CircleAvatar(
                 radius: 60,
                 backgroundColor: Colors.black38,
                 child: Icon(
                   Icons.people,
                   size: 70,
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text(
                   'change profile photo',
                   style: TextStyle(color: Colors.white, fontSize: 16),
                 ),
               ),
               TextFieldItem(Icon(Icons.mail), 'Name', 'Eman_Amassi'),
               TextFieldItem(Icon(Icons.people), 'UserName', 'Eman Amassi'),
               TextFieldItem(Icon(Icons.mail), 'Email', 'Eman@gmail.com'),
               TextFieldItem(Icon(Icons.lock), 'Password', '123456'),
             ],
           ),
         ),
       ),
     );
   }
 }
*/
