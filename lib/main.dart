//=================================================================================
// 0) REFERENCE
//=================================================================================
//https://medium.com/firebasethailand/flutter-x-firebase-cloud-firestore-29275799f6e9

//=================================================================================
// 1) IMPORT
//=================================================================================
import 'package:flutter/material.dart';
import 'package:menutest02/screens/HomePage.dart';
//=================================================================================
// 2) RUN APP
//=================================================================================
void main() => runApp(MyApp());

//=================================================================================
// 3) CALL HOME_PAGE (FILE)
//=================================================================================
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i-SEE 2020',
      theme: ThemeData(primarySwatch: Colors.blue,),      
      home: HomePage(),
    );
  }
}