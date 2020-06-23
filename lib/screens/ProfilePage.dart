import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/customicons/edit_icons.dart';
import 'package:projectflutterapp/models/User.dart';
import 'package:projectflutterapp/screens/first_page.dart';

import 'CustomAppBar.dart';
import 'CustomTextField.dart';
import 'EditProfile.dart';



class CustomText extends StatelessWidget {
  CustomText(this.text, this.customColor);

  String text;
  Color customColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: customColor,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class CustomColumnText extends StatelessWidget {
  CustomColumnText(this.text0, this.text, this.customColor);

  String text0;
  String text;
  Color customColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        CustomText(text0,customColor),
        CustomText(text,customColor),
      ],
    );
  }
}


class ProfilePage extends StatefulWidget {
  final String userProfileId;

  const ProfilePage({Key key, this.userProfileId}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{
  final currentUserId= currentUser.id;

  createProfileTopView(){
    return FutureBuilder(
      // ignore: missing_return
      future: usersReference.document(widget.userProfileId).get(),
      builder: (context, dataSnapshot){
        if(dataSnapshot.hasData){
          return CircularProgressIndicator();
        }
        User user= User.fromDocument(dataSnapshot.data);

        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(user.url),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75))
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            CustomAppBar('assets/images/ic_pen_edit.svg', 'Profile',
                                'assets/images/ic_back_arrow.svg',MaterialPageRoute(builder: (context) => EditProfile(currentUserId: currentUserId) )),
                            SizedBox(
                              height: 35,
                            ),
                            CustomColumnText('Eman', 'Ammm ODOD', Color(0xFF9966FF))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CustomColumnText('10', 'Friends', Color(0xFF9966FF)),
                              CustomColumnText('15', 'Task', Color(0xFF9966FF)),
                              CustomColumnText('60', 'Score', Color(0xFF9966FF)),
                            ],
                          ),
                          TextFieldItem(ImageIcon(AssetImage('assets/images/ic_mail.png'),color: Color(0xFF9966FF)), '', user.email),
                          TextFieldItem.addSecondIcon(ImageIcon(AssetImage('assets/images/ic_lock.png'),color: Color(0xFF9966FF),), '', user.id,ImageIcon(AssetImage('assets/images/ic_seen.png'),color: Color(0xFF9966FF))),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 2 / 5 - 60,
                  left: MediaQuery.of(context).size.width / 2 - 60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.people,
                      size: 60,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          createProfileTopView(),
        ],
      ),
    );
  }
}

