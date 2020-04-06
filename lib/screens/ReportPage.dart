//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _ReportPageState extends State<ReportPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Report"),),
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
