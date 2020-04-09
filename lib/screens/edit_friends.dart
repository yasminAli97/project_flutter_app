import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditFriends extends StatefulWidget {
  EditFriends({Key key}) : super(key: key);
  @override
  _EditFriendsState createState() => _EditFriendsState();
}

class _EditFriendsState extends State<EditFriends> {

  static TextEditingController _findFriendQuery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SafeArea(
        child: Scaffold(
          body: ListView(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  //            margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/backgroung1noor.png"),
                      fit: BoxFit.fill,
                    ),
                  ),

                  child: Column(children: <Widget>[
                    Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Column(children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width * 1.4 / 4,
                                      height: 80,
                                      decoration: new BoxDecoration(
                                        color: Color(0xffA57DF4),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(50),
                                            bottomLeft: Radius.circular(0),
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(0)),
                                        //                                      border: Border(
                                        //                                        right: BorderSide(
                                        //                                          color: Colors.white,
                                        //                                          width: 1.0,
                                        //
                                        //                                        ),
                                        //                                        top: BorderSide(
                                        //                                          color: Colors.white,
                                        //                                          width: 1.0,
                                        //                                        ),
                                        //                                      ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffBBB4C9).withOpacity(.35),
                                            blurRadius: 15.0,
                                            offset: const Offset(0.0, 10.0),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Container(
                                              child: SvgPicture.asset("assets/images/ic_back_arrow.svg")
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 1.2 / 4,
                                height: 75,
                                decoration: new BoxDecoration(
                                  color: Color(0xffBCAAE0).withOpacity(.35),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(50),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0)),
                                  //                              boxShadow: [
                                  //                                BoxShadow(
                                  //                                  color: Color(0xffBBB4C9).withOpacity(.35),
                                  //                                  blurRadius: 15.0,
                                  //                                  offset: const Offset(0.0, 10.0),
                                  //                                ),
                                  //                              ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return EditFriends();
                                        }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 1.6/ 4,
                                    height: 80,
                                    decoration: new BoxDecoration(
                                      color: Color(0xffBCAAE0).withOpacity(.35),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(50),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0)),
                                      //                                      border: Border(
                                      //                                        right: BorderSide(
                                      //                                          color: Colors.white,
                                      //                                          width: 1.0,
                                      //
                                      //                                        ),
                                      //                                        top: BorderSide(
                                      //                                          color: Colors.white,
                                      //                                          width: 1.0,
                                      //                                        ),
                                      //
                                      //                                      ),
                                    ),
                                    child: Text(
                                    "OK",
                                    style: TextStyle(
                                        fontFamily: "Segoe UI",
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Edit Friends",
                            style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20),
                          /*Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(left: 30, right: 30),
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    border: Border.all(
                                        color: Color(0xFFD5D5D5), width: 1.5),
                                  ),
                                  child: Container(
                                  ),
                                ),


                              ])*/
                          Container(
                            child: Column(
                              children: <Widget>[

                                TextField(
                                  controller: _findFriendQuery,
                                  textAlign: TextAlign.start,
                                  style: new TextStyle(
                                    color: Color(0xFFD5D5D5),
                                  ),
                                  cursorColor: Color(0xFFD5D5D5),
                                  decoration: InputDecoration(
                                    //   border: InputBorder(),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      fontFamily: "segoepr",
                                      fontSize: 12,
                                      color: Color(0xFFD5D5D5),
                                    ),

                                    prefix: Icon(Icons.search,
                                        color: Color(0xFFD5D5D5)),
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ]))
                  ]),
                ),
              ]
          ),

        ),
      ),
    );
  }
}
