import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';
import 'package:projectflutterapp/screens/addTaskScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/screens/task_attribute.dart';
import 'package:projectflutterapp/utility/sql_helper.dart';

class CategoryDetails extends StatefulWidget {
  Category category;
  bool isempty;

  CategoryDetails(this.category, this.isempty);

  @override
  _CategoryDetails createState() => _CategoryDetails(category, isempty);
}

class _CategoryDetails extends State<CategoryDetails> {
  Category category;
  bool isempty;

  TextEditingController _searchQuery = TextEditingController();

  _CategoryDetails(this.category, this.isempty);

  final dbHelper = SQL_Helper();
  Future<List<Task>> tasks;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tasks = dbHelper.tasksOfCategory(category.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xff9966FF),
          body: SingleChildScrollView(
            child: Container(
              //  height: double.infinity,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        1.4 /
                                        4,
                                    height: 80,
                                    decoration: new BoxDecoration(
                                      color: Color(0xffA57DF4),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(0),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffBBB4C9)
                                              .withOpacity(.35),
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
                                            MediaQuery.of(context).size.width *
                                                1.1 /
                                                4,
                                        height: 50,
                                        decoration: new BoxDecoration(
                                          color: Color(0xffAB85F6),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30)),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            SvgPicture.asset(
                                                "assets/images/ic_back_arrow.svg"),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                      width: 100,
                                      height: 50,
                                      alignment: AlignmentDirectional.topCenter,
                                      child: Text(
                                        "Choose Topic",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 15,
                                            color: Color(0xffFFCC00)),
                                      )),
                                  Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: <Widget>[
                                        Container(
                                            width: 55,
                                            height: 5,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                  color: Color(0xffFFCC00),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 17,
                                                  spreadRadius: 1)
                                            ])),
                                        Wrap(
                                          children: <Widget>[
                                            Text(
                                              category.title,
                                              style: TextStyle(
                                                  fontFamily: "Segoe UI",
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ]),
                                ],
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 1.4 / 4,
                                height: 75,
                                decoration: new BoxDecoration(
                                  color: Color(0xffBCAAE0).withOpacity(.35),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(50),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0)),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AddNewTaskScreen();
                                    }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        1.6 /
                                        4,
                                    height: 80,
                                    decoration: new BoxDecoration(
                                      color: Color(0xffBCAAE0).withOpacity(.35),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(0),
                                          bottomLeft: Radius.circular(50),
                                          topLeft: Radius.circular(0),
                                          topRight: Radius.circular(0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          "assets/images/ic_plus.svg",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
//                          isempty ? myEmptyScreen() :
                          myFullScreen(),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                )),
          )),
    );
  }

  Widget getTasks() {
    return FutureBuilder<List<Task>>(
        future: tasks,
        builder:
            (BuildContext context, AsyncSnapshot<List<Task>> asyncSnapshot) {
          if (asyncSnapshot.data == null || !asyncSnapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: asyncSnapshot.data.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TaskAttribute(asyncSnapshot.data[index]);
                      }));
                    },
                    child: Container(
                      color: Colors.black12,
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                        alignment: AlignmentDirectional.topStart,
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: AlignmentDirectional.topStart,
                                child: SvgPicture.asset(
                                    "assets/images/ic_task.svg", height: 50, width: 50,)),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Text(
                                  asyncSnapshot.data[index].title,
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 30,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "assets/images/ic_check.svg"),
                                )
                              ],
                            ),
                          ],
                        )),
                  );
                });
          }
        });
  }

  Widget myEmptyScreen() {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        Container(
          child: SvgPicture.asset("assets/images/img_notasks.svg"),
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              child: SvgPicture.asset(
                "assets/images/bottomNoTask.svg",
                color: Colors.black.withOpacity(.2),
              ),
            ),
            Text(
              "No Tasks",
              style: TextStyle(
                  fontFamily: "Segoe UI", fontSize: 40, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  Widget myFullScreen() {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 30, right: 30),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Color(0xFFD5D5D5), width: 1.5),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Icon(Icons.search, color: Color(0xFFD5D5D5)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 16),
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

                    filled: true,
                    fillColor: Colors.transparent,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.transparent, width: .5),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        getTasks(),
//        Container(
//            margin: EdgeInsetsDirectional.only(start: 20),
//            alignment: AlignmentDirectional.topStart,
//            child: Text(
//              "Tasks with Friends",
//              style: TextStyle(
//                  fontFamily: "segoepr",
//                  fontSize: 22,
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold),
//            )),
      ],
    );
  }
}
