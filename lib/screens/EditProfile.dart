import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/models/User.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:projectflutterapp/screens/first_page.dart';

import 'CustomAppBar.dart';
import 'CustomTextField.dart';
import 'ProfilePage.dart';

class EditProfile extends StatefulWidget {
  final String currentUserId;

  const EditProfile({Key key, this.currentUserId}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  TextEditingController profileName = TextEditingController();
  TextEditingController email = TextEditingController();

  bool loading;
  User user;
  bool bioValid;
  bool profileNameValid;

  Future<void> initState() async {
    setState(() {
      loading= true;
    });

    //display user information
    DocumentSnapshot snapshot= await usersReference.document(widget.currentUserId).get();
    user= User.fromDocument(snapshot);

    profileName.text= user.profileName;
    email.text= user.email;

    setState(() {
      loading= false;
    });

  }

  Route updateUserData() {
    setState(() {
      usersReference.document().updateData({
        'email': email.text,
        'username': profileName.text,
      });
    });

    return MaterialPageRoute(builder: (context) => ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/backgroung1noor.png'),
            fit: BoxFit.fill,
          )),
          child: loading
              ? CircularProgressIndicator()
              : Column(
                  children: <Widget>[
                    CustomAppBar(
                        'assets/images/ic_pen_edit.svg',
                        'Update profile',
                        'assets/images/ic_back_arrow.svg',
                        updateUserData()),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: showEditDialog(),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black38,
                        backgroundImage:
                            CachedNetworkImageProvider(url: user.url),
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
                    TextFieldItem(
                        Icon(Icons.people), 'UserName', 'Eman Amassi'),
                    TextFieldItem(Icon(Icons.mail), 'Email', 'Eman@gmail.com'),
                    TextFieldItem(Icon(Icons.lock), 'Password', '123456'),
                  ],
                ),
        ),
      ),
    );
    ;
  }

  showEditDialog() {}
}
