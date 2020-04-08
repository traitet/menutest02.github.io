//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _FormPageState extends State<FormPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Form 2020"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: Center(
          //=================================================
          // 4) CHILD: BUTTON
          //=================================================               
          child: RaisedButton(onPressed:() {},child: Text('Go Back'), ),
        ),
      );
    } //END WIDGET

}

