/*
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/customicons/edit_icons.dart' as customicon5;
import 'package:flutter_svg/flutter_svg.dart';


SafeArea friendsWidget(context , { Container page }){
  return SafeArea(
    child: Scaffold(
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
          Icon(Icons.search),
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
                            onTap: () {
                              Navigator.of(context).pop();
                            },
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
                                              "assets/images/ic_back_arrow.svg")
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
                              onTap: () {*/
/*
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return EditFriends();
                                    }));*//*

                              },
                              child: Icon(customicon5.Edit.mode_edit,color:Colors.white,size: 40,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              */
/*width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(left: 30, right: 30),
                              height: 40,*//*

                              */
/*decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                    color: Color(0xFFD5D5D5), width: 1.5),
                              ),*//*

                              child: Container(
                                child: page,
                              ),
                            ),


                          ])
                      //                  container [-[-> tabs
                    ]))
              ]),
            ),
          ]
      ),

    ),
  );
}*/
