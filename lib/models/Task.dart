


import 'package:projectflutterapp/models/Category.dart';

class Task {

  int _id;
  String _title;
  DateTime _time;
  //List<String> _days;
  String _timeInterval;
  String _notes;
  bool _taskComplete;
  bool _addAlert = true;
  int _hardness = 1;
  int _categoryId;
  String _image;

  Task();

  Task.withallPar(this._id,this._title, this._time,  this._notes,
      this._taskComplete, this._addAlert, this._hardness, this._categoryId);

  Task.withTitle(this._title);

  Task.withSomePar(this._title, this._time, this._taskComplete,
      this._categoryId);


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get categoryId => _categoryId;

  set categoryId(int value) {
    _categoryId = value;
  }

  int get hardness => _hardness;

  set hardness(int value) {
    _hardness = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  bool get addAlert => _addAlert;

  set addAlert(bool value) {
    _addAlert = value;
  }

  bool get taskComplete => _taskComplete;

  set taskComplete(bool value) {
    _taskComplete = value;
  }

  String get notes => _notes;

  set notes(String value) {
    _notes = value;
  }

  String get timeInterval => _timeInterval;

  set timeInterval(String value) {
    _timeInterval = value;
  } //  List<String> get days => _days;
//
//  set days(List<String> value) {
//    _days = value;
//  }

  DateTime get time => _time;

  set time(DateTime value) {
    _time = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }



  Map<String , dynamic> toMap(){

    var map = Map<String , dynamic>();

    map["_id"] = this._id ;
    map["_title"]= this._title;
    map["_time"]= this._time;
  //  map["_days"] =this._days;
    map["_notes"] =this._notes;
    map["_taskComplete"] =this._taskComplete;

    map["_addAlert"] =this._addAlert == true ? 1:0;
    map["_hardness"] =this._hardness;
    map["_category"] =this._categoryId;


    return map;

  }

  Task.fromMap( Map<String , dynamic> map){

    this._id =  map["_id"] ;
    this._title = map["_title"];
    this._time =map["_time"];
   // this._days = map["_days"];
    this._notes= map["_notes"] ;
    this._taskComplete= map["_taskComplete"] ;
    this._addAlert=  map["_addAlert"]==0? false: true;
    this._hardness= map["_hardness"] ;
    this._categoryId = map["_category"];

  }



}