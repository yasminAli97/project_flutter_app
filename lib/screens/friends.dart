import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/customicons/my_flutter_app_icons.dart' as customicon1;
import 'package:projectflutterapp/customicons/awesome_icon_icons.dart' as customicon2;
import 'package:projectflutterapp/customicons/requests_and_friends_icons.dart' as customicon3;
import 'package:projectflutterapp/customicons/requests_icon_icons.dart' as customicon4;
import 'package:flutter_svg/flutter_svg.dart';

class Friends extends StatefulWidget {
  Friends({Key key}) : super(key: key);
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  TextEditingController _searchQuery = TextEditingController();
  int _currentIndex =0;
  final tabs =[
    Center(child: Text("Friends"),),
    Center(child: Text("Requests"),),
    Center(child: Text("Score"),),
  ];

  @override
  void initState() {
//     TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index){
            setState((){_currentIndex =index;});
          },
          height: 50,
          color: Colors.white,
          backgroundColor:Color(0xff9F70FC),//D2CADE#
          buttonBackgroundColor: Colors.white,
//          type: BottomNavigationBarType.fixed,
//          selectedFontSize: 20,
//          unselectedFontSize: 10,
//          iconSize: 20,
//          currentIndex: 0,
          items:[
             Icon(customicon3.RequestsAndFriends.icon_people,color:Colors.black  ,size:20 ,),
             Icon(customicon4.RequestsIcon.icon_requests,color: Colors.black,),
             Icon(customicon2.AwesomeIcon.icon_awesome_hackerrank,color: Colors.black,),
          ],
        ),
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
                        onTap: () {/*
                          showDialog(
                              context: context,
                              builder: (_) => Center(child: scoreShape()));
                        */},
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            Container(
                              width:
                              MediaQuery.of(context).size.width * 1.4 / 4,
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
                                      child: SvgPicture.asset(
                                          "assets/images/score.svg")),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Score",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "8",
                                          style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 20,
                                            color: Color(0xffFFCC00),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
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
                          onTap: () {/*
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return AddNewTaskScreen();
                                }));
                          */},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.6 / 4,
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
                            child: SvgPicture.asset(
                              "assets/images/ic_plus.svg",
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
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
                          child: new TextField(
                            controller: _searchQuery,
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
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: tabs[_currentIndex],
//                          color: Colors.redAccent,
                        ),
                      ])
//                  container [-[-> tabs
                ]))
          ]),
        ),
          ]
        ),
        /*body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
//        margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/backgroung1noor.png"),
                  fit: BoxFit.fill
              )
          ),
          child: tabs[_currentIndex],
        ),*/
        /*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
              )
            ],
          ),*/
        /*bottomNavigationBar: Container(
            height: 60,
            color: Colors.black12,
            child: InkWell(
              onTap: () => print('tap on close'),
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Theme.of(context).accentColor,
                    ),
                    Text('close')
                  ],
                ),
              ),
            ),
          )*/
      ),
    );
  }
}
