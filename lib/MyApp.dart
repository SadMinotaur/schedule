library app;

import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

part 'app/ScaleRoute.dart';

part 'app/Cards.dart';

part 'data/Data.dart';

part 'app/MainState.dart';

part 'app/AddLesson.dart';

part 'app/Settings.dart';

part 'data/Colors.dart';

part 'data/ScheduleParse.dart';

part 'app/StateLogic.dart';

part 'data/GroupParse.dart';

part 'app/ChooseState.dart';

//Keys from back4app
const String PARSE_APP_ID = 'TmOSA86376clw7ZRIl5YSuSQbrh6Ty5JjZbFxCLP';
const String PARSE_APP_URL = 'https://parseapi.back4app.com/';
const String MASTER_KEY = 'LPNoqEM5aOXT08a0wjzQJogi1lvJJvv0SXpXEuxX';
Data _lessons = Data();
ColorsData _colors = ColorsData();
DateTime _cur;
Database _db;
bool _layout;
String _group;
String _university;
bool _theme = true;
GlobalKey<ScaffoldState> _key = new GlobalKey();
bool _isChangedWeek = false;

class MyApp extends StatefulWidget {
  @override
  MainState createState() => MainState();
}