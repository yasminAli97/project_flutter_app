import 'package:flutter/material.dart';
import 'first_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'CustomAppBar.dart';
import 'CustomTextField.dart';
import 'package:projectflutterapp/customicons/edit_icons.dart' as customicon5;
import 'EditProfilePage.dart';


class ProfilePageNoor extends StatefulWidget {
  final String userProfileId;
  ProfilePageNoor({Key key , this.userProfileId}) : super(key: key);
  @override
  _ProfilePageNoorState createState() => _ProfilePageNoorState();
}


final currentUserId= currentUser.id;

class _ProfilePageNoorState extends State<ProfilePageNoor> {

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


  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}




/*
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
//            margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Profile.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    children: <Widget>[
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
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return EditProfilePage();
                                    }));
                              },
                              child: Icon(customicon5.Edit.mode_edit,color:Colors.white,size: 40,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CustomColumnText('Eman', 'Ammm ODOD', Color(0xFF9966FF)),
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
                            TextFieldItem(ImageIcon(AssetImage('assets/images/ic_mail.png'),color: Color(0xFF9966FF)), '', 'FayzaElzain@gmail.com'),
                            TextFieldItem.addSecondIcon(ImageIcon(AssetImage('assets/images/ic_lock.png'),color: Color(0xFF9966FF),), '', '123456789',ImageIcon(AssetImage('assets/images/ic_seen.png'),color: Color(0xFF9966FF))),
                          ],
                        ),
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
                  )
              ),
              *//*child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          *//**//*decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Path_1833.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                      ),*//**//*
                          child: Column(
                            children: <Widget>[
                              CustomAppBar('assets/images/ic_pen_edit.svg', 'Profile',
                                  'assets/images/ic_back_arrow.svg',null),
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
                            TextFieldItem(ImageIcon(AssetImage('assets/images/ic_mail.png'),color: Color(0xFF9966FF)), '', 'FayzaElzain@gmail.com'),
                            TextFieldItem.addSecondIcon(ImageIcon(AssetImage('assets/images/ic_lock.png'),color: Color(0xFF9966FF),), '', '123456789',ImageIcon(AssetImage('assets/images/ic_seen.png'),color: Color(0xFF9966FF))),
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
              ),*//*
            )
          ],
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
    return Column(
      children: <Widget>[
        CustomText(text0,customColor),
        CustomText(text,customColor),
      ],
    );
  }
}
class CustomText extends StatelessWidget {
  CustomText(this.text, this.customColor);

  String text;
  Color customColor;

  @override
  Widget build(BuildContext context) {
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
}*/