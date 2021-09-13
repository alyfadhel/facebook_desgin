import 'package:facebook_mobile/modules/facebookweb.dart';
import 'package:facebook_mobile/modules/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            backwardsCompatibility: false,
            toolbarTextStyle: TextStyle(color: Colors.black),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            elevation: 0.0,
          )),
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            print (constraints.minWidth.toInt()) ;
            print (constraints.minHeight.toInt()) ;
            if (constraints.minWidth.toInt() <=500||constraints.minHeight.toInt() <=500)
              return HomeScreen();
              return FacebookWeb() ;
          }),
    );

  }
}
