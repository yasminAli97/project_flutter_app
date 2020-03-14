import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectflutterapp/models/Category.dart';
import 'package:projectflutterapp/models/Task.dart';
import 'package:projectflutterapp/screens/addTaskScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectflutterapp/screens/task_attribute.dart';

class categoriesScreen extends StatefulWidget {
  categoriesScreen({Key key}) : super(key: key);

  @override
  _categoriesScreen createState() => _categoriesScreen();
}

class _categoriesScreen extends State<categoriesScreen> {

  List<Task> tasks = List<Task>();
  List<Category> categories = List<Category>();

  List<String> colorImageCatg =[
    "assets/images/red_catg.svg",
    "assets/images/blue_catg.svg",
    "assets/images/yellow_catg.svg",
    "assets/images/green_catg.svg",
    "assets/images/mov_catg.svg"
  ];

  List<Color> colors =[
    Color(0xffFE5F5F),
    Color(0xff25B0FF),
    Color(0xffFFCC00),
    Color(0xff7DE82B),
    Color(0xff9966FF)
  ];

  TextEditingController controller = TextEditingController();

  TextEditingController _searchQuery = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories.add(Category.withSomePar("Default",tasks));//fromdatabase
    categories.add(Category.withSomePar("Work",tasks));
    categories.add(Category.withSomePar("Study",tasks));
    categories.add(Category.withSomePar("Sport",tasks));
    categories.add(Category.withSomePar("Reading",tasks));
    categories.add(Category.withSomePar("Sport",tasks));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

        backgroundColor: Color(0xff9966FF),

        body: ListView(
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

                margin: EdgeInsets.only(  bottom: 10),

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child:Column(
                  children: <Widget>[
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        children: <Widget>[
                          Row(
                        //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width*1/4,
                                    height: 80,
                                    decoration: new BoxDecoration(
                                      color: Color(0xffA57DF4),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(0),
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
//                                      ),

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
                                        width: MediaQuery.of(context).size.width*1/4,
                                        height: 50,
                                        decoration: new BoxDecoration(
                                          color: Color(0xffAB85F6),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),

                                        ),
                                        child: SvgPicture.asset("assets/images/ic_back_arrow.svg")
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: <Widget>[
                                  Container(
                                      width: 100,
                                      height: 50,
                                      alignment: AlignmentDirectional.topCenter,
                                      child: Text("Choose Topic",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: "Segoe UI",
                                            fontSize: 15,
                                            color: Color(0xffFFCC00)),
                                      )
                                  ),
                                  Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: <Widget>[
                                        Container(
                                            width: 130,
                                            height: 5,
                                            decoration: BoxDecoration(

                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color(0xffFFCC00),
                                                      offset: Offset(0, 2),
                                                      blurRadius: 17,
                                                      spreadRadius: 1
                                                  )]
                                            )
                                        ),

                                        Wrap(
                                          children: <Widget>[
                                            Container(

                                                alignment: AlignmentDirectional.topCenter,
                                                child: Text("CATEGORIES",
                                                  style: TextStyle(
                                                      fontFamily: "segoepr",
                                                      fontSize: 22,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                )
                                            ),
                                          ],
                                        )
                                      ]
                                  ),

                                ],
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width*1.2/4,
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
                                    showDialog(context: context,
                                        builder: (_) => showAlert());
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
                                    child: SvgPicture.asset(
                                      "assets/images/ic_plus.svg",
                                      height: 10,width: 10,),

                                  ),
                                ) ,

                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(left: 30,right: 30),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                              color: Color(0xFFD5D5D5),
                                  width: 1.5
                            ),

                            ),

                            child: new TextField(
                              controller: _searchQuery,
                              textAlign: TextAlign.start,
                              style: new TextStyle(
                                color: Color(0xFFD5D5D5),
                              ),
                              cursorColor:Color(0xFFD5D5D5) ,
                              decoration: InputDecoration(
                             //   border: InputBorder(),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                      fontFamily: "segoepr",
                                      fontSize: 12,
                                      color: Color(0xFFD5D5D5),

                                  ),

                                prefix: Icon(Icons.search,color: Color(0xFFD5D5D5)),
                                filled: true,
                                fillColor: Colors.transparent,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent),
                                ),

                                focusedBorder:OutlineInputBorder(

                                    borderSide: const BorderSide(color: Color(0xFFD5D5D5)),
                                    borderRadius:const BorderRadius.all(
                                      const Radius.circular(30),
                                    ),

                                ),
                              ),

                            ),
                          ),


                          ListView.builder(
                              itemCount: categories.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index){
                                return
                                  Center(
                                    child: Stack(
                                         alignment: AlignmentDirectional.centerStart,
                                        children: <Widget>[
                                             Container(
                                             height: 55,
                                                 width: MediaQuery.of(context).size.width*4/5,
                                                  // margin: EdgeInsets.only(left: 30,right: 30),
                                                    child: CustomPaint(
                                                    painter: Chevron(),
                                                       child: Center(
                                                         child: Text(categories[index].title,
                                                        textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                         fontFamily: "Segoe UI",
                                                          fontSize: 20,
                                                                color: colors[index%5],
                                                         fontWeight: FontWeight.bold),
                                                           ),

                                                          ),
                                                       ),
                                                      ),

                                                   SvgPicture.asset(colorImageCatg[index%5]),
                            ],
                          ),
                                  );
                              }
                          ),

                        ],

                      ),
                    ),

                    Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text("Categories with Friends",
                          style: TextStyle(
                              fontFamily: "segoepr",
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),


                  ],
                )
            ),
            ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return
                    Center(
                      child: Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: <Widget>[
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width*4/5,
                            // margin: EdgeInsets.only(left: 30,right: 30),
                            child: CustomPaint(
                              painter: Chevron(),
                              child: Center(
                                child: Text(categories[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontSize: 20,
                                      color: colors[index%5],
                                      fontWeight: FontWeight.bold),
                                ),

                              ),
                            ),
                          ),

                          SvgPicture.asset(colorImageCatg[index%5]),
                        ],
                      ),
                    );
                }
            ),
          ],
        )
    );
  }

  Widget showAlert() {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[

          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*2.1/5,
            padding: EdgeInsets.only(top:10, left: 15, right: 15,),
            margin: EdgeInsets.only(left: 25, right: 25,top: 20),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFFCC00),
                  blurRadius: 15.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*2.6/15),
                 // alignment: AlignmentDirectional.center,
                  child: Text(
                      "Please input the Category name :",
                      textAlign: TextAlign.start,
                      style: (TextStyle(
                          fontFamily: "Segoe UI",
                          color:  Color(0xFF666666),
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      )
                      )
                  ),
                ),
                Card(
                  elevation: 0,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                    controller: controller,
                    cursorColor: Color(0xFFFFCC00),
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: "Segoe UI",
                        fontSize:20 ),
                    decoration: InputDecoration(
                      filled: false,
                      hintText: "new category",
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: "Segoe UI",
                          fontSize:20 ),

                    )

                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: FlatButton(
                    onPressed: () {

                      addCategory(); // To close the dialog
                    },
                    child: Text("OK",
                        textAlign: TextAlign.center,
                        style: (TextStyle(
                            fontFamily: "Segoe UI",
                            color:  Color(0xFFE24C4B),
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        )
                        )),


                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*2.4/15,
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                alignment: AlignmentDirectional.topStart,
                decoration: new BoxDecoration(
                    color: Color(0xffFFCC00),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))
                ),
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20, bottom: 25),
                        width: 150,
                        height: 10,
                        decoration: BoxDecoration(

                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffF2ECD5),
                                  offset: Offset(2, 2),
                                  blurRadius: 17,
                                  spreadRadius: 5
                              )]
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, bottom: 20),
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text("Add Category",
                        textAlign: TextAlign.start,
                        style: (TextStyle(
                            fontFamily: "Segoe UI",
                            color:  Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        )
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Positioned(
                right: 22,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xffFFCC00),
                      radius: 35,

                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pop();
                        });

                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/circle_close.png"),

                        radius: 28,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );


  }

  void addCategory() {}


}


class Chevron extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final Paint paint = new Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height/2);
    path.lineTo(size.width/7,size.height);
    path.lineTo(size.width*6/7 , size.height);
    path.lineTo(size.width, size.height/2);
    path.lineTo(size.width*6/7, 0);
    path.lineTo(size.width/7, 0);
    path.moveTo(size.width/2, size.height/2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
