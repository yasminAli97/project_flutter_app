import 'package:flutter/material.dart';


class Friends extends StatefulWidget {
  Friends({Key key}) : super(key: key);
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  TextEditingController _searchQuery = TextEditingController();


  //void initState() {
    // TODO: implement initState
    //super.initState();
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroung1noor.png"),
                fit: BoxFit.cover
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
