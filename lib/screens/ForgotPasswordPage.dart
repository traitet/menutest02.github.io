//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Forgot Password"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: Center(
      //============================================================================
      // 3) CHILD: COLUMN
      //============================================================================                   
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //======================================================================
            // 1) TEXT
            //======================================================================
            SizedBox(height: 40.0,),  
            Text('Dont worry. Reset your password is easy.',),      
            Text('Just will e-mail and click SEND',),                    
             //=====================================================================
            // 2) E-MAIL
            //======================================================================             
            TextFormField(decoration: InputDecoration(labelText: 'E-mail', prefixIcon: Icon(Icons.email)),),
             //=====================================================================
            // 3) BUTTON
            //======================================================================  
            SizedBox(height: 10.0,),  
            RaisedButton(onPressed: (){}, 
            color: Colors.blue, 
            child: Text('SEND',style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),), ),            
          ])
        ),
      );
    } //END WIDGET

  } //END CLASS

