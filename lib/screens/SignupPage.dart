//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';

//===========================================================
// 2) MAIN CLASS
//===========================================================
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _SignupPageState extends State<SignupPage> {
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){
      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Sign-up"),),
        //===================================================
        // 3) BODY
        //===================================================              
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //======================================================================
            // 1) TEXT
            //======================================================================
            SizedBox(height: 40.0,),  
            Text('Dont worry. Register your account is only 1 minute.',),      
            Text('Just fill details below !!',),                    
             //=====================================================================
            // 2) E-MAIL
            //======================================================================             
            TextFormField(decoration: InputDecoration(labelText: '*E-mail', prefixIcon: Icon(Icons.email)),),
            TextFormField(decoration: InputDecoration(labelText: '*Full Name', prefixIcon: Icon(Icons.near_me)),),
            TextFormField(decoration: InputDecoration(labelText: '*Password', prefixIcon: Icon(Icons.vpn_key)),),                         
            TextFormField(decoration: InputDecoration(labelText: 'Line ID', prefixIcon: Icon(Icons.network_cell)),),
            TextFormField(decoration: InputDecoration(labelText: 'Mobile No', prefixIcon: Icon(Icons.phone)),),                                    
            TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),),                
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

