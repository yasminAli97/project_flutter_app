import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:projectflutterapp/utility/MyImage.dart';
import 'package:image_picker/image_picker.dart';

class AddNewTaskScreen extends StatefulWidget {
  AddNewTaskScreen({Key key}) : super(key: key);

  @override
  _AddNewTaskScreen createState() => _AddNewTaskScreen();
}

class _AddNewTaskScreen extends State<AddNewTaskScreen> {

  File imageFile = null;
  String imageToSave = "";
  String imgString = "";

  TextEditingController controller = TextEditingController();

  bool isPress = false;
  bool isPress2 = false;

  List<Category> categories = List<Category>();
  List<String> timeInterval = ["Daily","Weekly","Monthly" , "None"];
  List<Task> tasks = List<Task>();
  List<String> colorsImages =[ 
      "assets/images/ic_red.svg",
      "assets/images/ic_blue.svg",
      "assets/images/ic_green.svg", 
      "assets/images/ic_yellow.svg",
      "assets/images/ic_orange.svg"];

  List<String> colorsBlankImages =[
    "assets/images/ic_redd.svg",
    "assets/images/ic_bluee.svg",
    "assets/images/ic_greenn.svg",
    "assets/images/ic_yelloww.svg"];


  bool isChecked = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tasks.add(Task());
    categories.add(Category.withSomePar(0,"Default"));//fromdatabase
    categories.add(Category.withSomePar(1,"Work"));
    categories.add(Category.withSomePar(2,"Study"));
    categories.add(Category.withSomePar(3,"Sport"));
    categories.add(Category.withSomePar(4,"Reading"));
    categories.add(Category.withSomePar(5,"Sport"));
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
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,

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
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 1.6 / 4,
                            height: 75,
                            decoration: new BoxDecoration(
                              color: Color(0xffA57DF4),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(0),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0)

                              ),
                              border: Border(
                                right: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,

                                ),
                                top: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),

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
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 1.2 / 4,
                                height: 50,
                                decoration: new BoxDecoration(
                                  color: Color(0xffAB85F6),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(30)),

                                ),
                                child: SvgPicture.asset("assets/images/ic_back_arrow.svg")
                            ),
                          ),
                        ],
                      ),
              Container(
                width: MediaQuery.of(context).size.width*1.4/4,
                height: 75,
                decoration: new BoxDecoration(
                  color: Color(0xffBCAAE0).withOpacity(.35),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0)

                  ),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color(0xffBBB4C9).withOpacity(.35),
//                                  blurRadius: 15.0,
//                                  offset: const Offset(0.0, 10.0),
//                                ),
//                              ],

                ),
                child: GestureDetector(
                  onTap: (){
                    saveTask();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.6/4,
                    height: 80,
                    decoration: new BoxDecoration(
                      color: Color(0xffBCAAE0).withOpacity(.35),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0)

                      ),
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
                    child: SvgPicture.asset("assets/images/ic_check_btn.svg"),

                  ),
                ) ,

              ),
                    ],
                  ),

                  Container(

                      alignment: AlignmentDirectional.topCenter,
                      child: Text("Add new task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "segoepr",
                            fontSize: 18,
                            color: Colors.white,
                        fontWeight: FontWeight.bold),

                      )
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width*3.5/5,
                        margin: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: controller,
                          cursorColor: Color(0xFFFFCC00),
                          textAlignVertical: TextAlignVertical.bottom,
                          style: TextStyle(
                              color: Color(0xFFE2DDC7),
                              fontFamily: "Segoe UI",
                              fontSize:15 ),
                          decoration: InputDecoration(

                            filled: false,
                            hintText: "What should be done?",
                            suffixIcon: Icon(Icons.mic , color: Colors.white),
                            hintStyle: TextStyle(
                                color: Color(0xFFE2DDC7),
                                fontFamily: "Segoe UI",
                                fontSize:15 ),

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
                                decoration: BoxDecoration(

                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFCC00),
                                          offset: Offset(0, 2),
                                          blurRadius: 17,
                                          spreadRadius: 2
                                      )]
                                )
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width*3/4,
                             margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Add to the list : ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ]
                      ),

                      Container(
                      //  alignment: AlignmentDirectional.topStart,
                          child: SvgPicture.asset("assets/images/ic_addtolist.svg")
                      ),

                    ],
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length, itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            isPress = !isPress;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: SvgPicture.asset(colorsImages[index%5]),
                            ),
                            isPress?
                            Wrap(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                                  decoration: new BoxDecoration(
                                    color: Colors.greenAccent  ,
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

                                  child: Center(child: Text(categories[index].title,
                                    style: TextStyle(
                                        fontSize:15,
                                        fontFamily: "Rubik",
                                        color:Colors.white),


                                  )),
                                ),
                              ],
                            ):

                            Wrap(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                                  decoration: new BoxDecoration(
                                    color:  Colors.transparent ,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(3),
                                  ),

                                  child: Center(child: Text(categories[index].title,
                                    style: TextStyle(
                                        fontSize:15,
                                        fontFamily: "Rubik",
                                        color:Colors.white),


                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),


                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(

                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFCC00),
                                          offset: Offset(0, 2),
                                          blurRadius: 17,
                                          spreadRadius: 2
                                      )]
                                )
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width*3/4,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Time Interval : ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ]
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    height: 90,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: timeInterval.length, itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            isPress2 = !isPress2;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            isPress2?
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
                  ),

                  Row(
                    children: <Widget>[
                      Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: <Widget>[
                            Container(
                                width: 130,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(

                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFCC00),
                                          offset: Offset(0, 2),
                                          blurRadius: 17,
                                          spreadRadius: 2
                                      )]
                                )
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Choose Image ",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),

                          ]
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: (){
                          getImage();

                        },
                        child: SvgPicture.asset("assets/images/ic_imagepicker.svg"),
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
                                decoration: BoxDecoration(

                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFCC00),
                                          offset: Offset(0, 2),
                                          blurRadius: 17,
                                          spreadRadius: 2
                                      )]
                                )
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Reminder",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),

                          ]
                      ),
                      SizedBox(width: 20),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isChecked = !isChecked;
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
                                decoration: BoxDecoration(

                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffFFCC00),
                                          offset: Offset(0, 2),
                                          blurRadius: 17,
                                          spreadRadius: 2
                                      )]
                                )
                            ),

                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                margin: EdgeInsets.only(left: 20),
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Share With Friends",
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),

                          ]
                      ),

                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: (){

                        },
                        child: SvgPicture.asset("assets/images/ic_share_friends.svg"),
                      )
                    ],
                  ),



                  GestureDetector(
                    onTap: (){
                      showDatePicker(
                        context: context,
                        initialDate: new DateTime.now(),
                        firstDate:
                        new DateTime.now().subtract(new Duration(days: 30)),
                        lastDate: new DateTime.now().add(new Duration(days: 30)),
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

  void saveTask() {
    print("save");
  }

}
