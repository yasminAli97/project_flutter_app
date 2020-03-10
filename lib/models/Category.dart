


import 'package:projectflutterapp/models/Task.dart';

class Category {

  String _title;
  String _description;
  List<Task> _tasks;

  Category();

  Category.withPar(this._title, this._description, this._tasks);
  Category.withSomePar(this._title,this._tasks);


  String get title => _title;

  set title(String value) {
    _title = value;
  }


  String get description => _description;

  set description(String value) {
    _description = value;
  }

  get tasks => _tasks;

  set tasks(List<Task> value) {
    _tasks = value;
  }

  Map<String , dynamic> toMap(){

    var map = Map<String , dynamic>();

    map["_title"]= this._title;
    map["_description"]= this._description;
    map["tasks"] =this.tasks;

    return map;

  }

  Category.fromMap( Map<String , dynamic> map){

    this._title = map["_title"];
    this._description =map["_description"];
    this.tasks = map["tasks"];
  }



}