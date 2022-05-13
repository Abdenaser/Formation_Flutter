import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tp1/pages/covid.dart';
import 'package:tp1/pages/contacts.dart';
import 'package:tp1/pages/github_users.dart';
import 'package:tp1/pages/home.dart';

void main(){
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode)
      exit(1);
  };
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>Home(),
        "/contacts":(context)=>Contacts(),
        "/github_users":(context)=>GitHubUsers(),
        "/covid":(context)=>covid(),
      },
    );
  }

}