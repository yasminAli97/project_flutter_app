import 'package:flutter/material.dart';

class FriendsRequests extends StatefulWidget {
  @override
  _FriendsRequestsState createState() => _FriendsRequestsState();
}

class _FriendsRequestsState extends State<FriendsRequests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "FRIENDS REQUESTS",
              style: TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
