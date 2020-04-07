import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:projectflutterapp/utility/MyImage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectflutterapp/utility/sql_helper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddNewTaskScreen extends StatefulWidget {
  AddNewTaskScreen({Key key}) : super(key: key);

  @override
  _AddNewTaskScreen createState() => _AddNewTaskScreen();
}

class _AddNewTaskScreen extends State<AddNewTaskScreen> {
  Task task = Task();

  File imageFile = null;
  String imageToSave = "";
  String imgString = "";

  final dbHelper = SQL_Helper();

  TextEditingController controller = TextEditingController();



  List<String> timeInterval = ["Daily", "Weekly", "Monthly", "Never"];
  List<bool> isPressTime =    [false,    false,    false,    false];
  List<Task> tasks = List<Task>();
  List<String> colorsImages = [
    "assets/images/ic_red.svg",
    "assets/images/ic_blue.svg",
    "assets/images/ic_green.svg",
    "assets/images/ic_yellow.svg",
    "assets/images/ic_orange.svg"
  ];

  List<String> colorsBlankImages = [
    "assets/images/ic_redd.svg",
    "assets/images/ic_bluee.svg",
    "assets/images/ic_greenn.svg",
    "assets/images/ic_yelloww.svg"
  ];

  bool isChecked = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(0xff9966FF),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bgwithout.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 1.6 / 4,
                            height: 75,
                            decoration: new BoxDecoration(
                              color: Color(0xffA57DF4),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0)),
//                              border: Border(
//                                right: BorderSide(
//                                  color: Colors.white,
//                                  width: 1.0,
//
//                                ),
//                                top: BorderSide(
//                                  color: Colors.white,
//                                  width: 1.0,
//                                ),
//                              ),

                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffBBB4C9).withOpacity(.35),
                                  blurRadius: 15.0,
                                  offset: const Offset(0.0, 10.0),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 1.2 / 4,
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Color(0xffAB85F6),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30)),
                                ),
                                child: SvgPicture.asset(
                                    "assets/images/ic_back_arrow.svg")),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1.4 / 4,
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
                            setState(() {
                              addTask(task);
                            });
                          },
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
                                "assets/images/ic_check_btn.svg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      alignment: AlignmentDirectional.topCenter,
                      child: Text(
                        "Add new task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "segoepr",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 3.5 / 5,
                        margin: EdgeInsets.only(left: 20),
                        child: TextField(
                          onSubmitted: (text) {
                            setState(() {
                              task.title = text;
                            });
                          },
                          controller: controller,
                          cursorColor: Color(0xFFFFCC00),
                          textAlignVertical: TextAlignVertical.bottom,
                          style: TextStyle(
                              color: Color(0xFFE2DDC7),
                              fontFamily: "Segoe UI",
                              fontSize: 15),
                          decoration: InputDecoration(
                            filled: false,
                            hintText: "What should be done?",
                            suffixIcon: Icon(Icons.mic, color: Colors.white),
                            hintStyle: TextStyle(
                                color: Color(0xFFE2DDC7),
                                fontFamily: "Segoe UI",
                                fontSize: 15),

                            //       border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFCC00),
                                      offset: Offset(0, 2),
                                      blurRadius: 17,
                                      spreadRadius: 2)
                                ])),
                            Container(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 4,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Add to the list : ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                      Container(
                          //  alignment: AlignmentDirectional.topStart,
                          child: SvgPicture.asset(
                              "assets/images/ic_addtolist.svg")),
                    ],
                  ),
                  Container(

                    height: 90,
                    child: getCategories(),      //////
                  ),
                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFCC00),
                                      offset: Offset(0, 2),
                                      blurRadius: 17,
                                      spreadRadius: 2)
                                ])),
                            Container(
                                width:
                                    MediaQuery.of(context).size.width * 3 / 4,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Time Interval : ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                    ],
                  ),

                  timeIntervalWidget(),

                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFCC00),
                                      offset: Offset(0, 2),
                                      blurRadius: 17,
                                      spreadRadius: 2)
                                ])),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Choose Image ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ]),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: SvgPicture.asset(
                            "assets/images/ic_imagepicker.svg"),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFCC00),
                                      offset: Offset(0, 2),
                                      blurRadius: 17,
                                      spreadRadius: 2)
                                ])),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Reminder",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ]),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                            task.addAlert = isChecked;
                          });
                        },
                        child: CustomSwitchButton(
                          buttonWidth: 47,
                          buttonHeight: 27,
                          indicatorWidth: 20,
                          backgroundColor: Colors.white,
                          unCheckedColor: Color(0xffFE5F5F),
                          animationDuration: Duration(milliseconds: 400),
                          checkedColor: Color(0xffFE5F5F),
                          checked: isChecked,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 170,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffFFCC00),
                                      offset: Offset(0, 2),
                                      blurRadius: 17,
                                      spreadRadius: 2)
                                ])),
                            Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Share With Friends",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ]),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                            "assets/images/ic_share_friends.svg"),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: new DateTime.now(),
                        firstDate:
                            new DateTime.now().subtract(new Duration(days: 30)),
                        lastDate:
                            new DateTime.now().add(new Duration(days: 30)),
                      );
                    },
                    child: Container(
                      child: SvgPicture.asset("assets/images/time.svg"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = image;
      imageToSave = MyImage.base64String(imageFile.readAsBytesSync());
      //  imageFile = MyImage.dataFromBase64String(imageToSave);
      tasks[0].image = imageToSave;

      print('Select image path' + imageFile.path.toString());
    });
  }

  Widget timeIntervalWidget(){


    return   Container(

      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: timeInterval.length, itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            setState(() {
              isPressTime[index] = !isPressTime[index];
              if(isPressTime[index]){
                isPressTime =    [false,    false,    false,    false];
                isPressTime[index] = true;
                task.timeInterval = timeInterval[index];

              }

            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              isPressTime[index]?
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Container(
                      child: SvgPicture.asset(colorsBlankImages[index%5] )),
                  Icon(Icons.done, color: Colors.white , size: 20,)
                ],
              )
                  :Container(
                child: SvgPicture.asset(colorsBlankImages[index%5] ),
              ),
              Wrap(
                children: <Widget>[
                  Text(timeInterval[index],
                    style: TextStyle(
                        fontSize:15,
                        fontFamily: "Rubik",
                        color:Colors.white),

                  )

                ],
              ),
            ],
          ),
        );
      }),
    );

  }


  Widget getCategories() {
    return FutureBuilder<List<Category>>(
        future: dbHelper.showCategories(),
        builder: (BuildContext context,
            AsyncSnapshot<List<Category>> asyncSnapshot) {
          if (asyncSnapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: asyncSnapshot.data.length,
                itemBuilder: (context, index) {
                  print(asyncSnapshot.data[index].isPress.toString() + "1");

                  //  asyncSnapshot.data[index].isPress = !asyncSnapshot.data[index].isPress;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        print(
                            asyncSnapshot.data[index].isPress.toString() + "2");
                        asyncSnapshot.data[index].isPress =
                            !asyncSnapshot.data[index].isPress;
                        task.categoryId = asyncSnapshot.data[index].id;

                        print(
                            asyncSnapshot.data[index].isPress.toString() + "3");
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: SvgPicture.asset(colorsImages[index % 5]),
                        ),
                        asyncSnapshot.data[index].isPress
                            ? Wrap(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 7, right: 7, top: 3, bottom: 3),
                                    decoration: new BoxDecoration(
                                      color: Colors.greenAccent,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(3),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.greenAccent,
                                          blurRadius: 7.0,
                                          offset: const Offset(0.0, 3.0),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      asyncSnapshot.data[index].title,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Rubik",
                                          color: Colors.white),
                                    )),
                                  ),
                                ],
                              )
                            : Wrap(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 7, right: 7, top: 3, bottom: 3),
                                    decoration: new BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Center(
                                        child: Text(
                                      asyncSnapshot.data[index].title,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Rubik",
                                          color: Colors.white),
                                    )),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  );
                });
          }
        });
  }

  void addTask(Task task) async{

    int result = await dbHelper.insertTask(task);

    if (result == 0) {
      Fluttertoast.showToast(
          msg: "Task not saved",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    } else {

      Navigator.of(context).pop();
      Fluttertoast.showToast(
          msg: "Task has been saved successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.black,
          fontSize: 16.0
      );

    }

  }
}
