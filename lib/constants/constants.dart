import 'package:flutter/material.dart';

String TASK_ATTRIUTE_SCREEN='/TaskAttribute',
    ADD_NEW_TASK ='/AddNewTaskScreen',
   CATEGORY_DETAILS = '/CategoryDetails',
    CATEGORIES_SCREEN = '/CategoriesScreen',
    HOME_SCREEN = '/HomeScreen',
CREATE_ACCOUNT_PAGE ='/CreateAccountPage';


  const textInputDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink, width: 2.0),
  )
  );