//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';
import 'package:menutest02/components/show_notification.dart';
import 'package:menutest02/services/SignupUser.dart';
import 'package:menutest02/services/logger_service.dart';

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
      final _usernameController = TextEditingController();
      final _passwordController = TextEditingController();
      final _fullnameController = TextEditingController();  
      final _lineidController = TextEditingController();    
      final _mobilenoController = TextEditingController();  
      final _companyController = TextEditingController();                 
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
            // 2) TEXT CONTROL
            //======================================================================             
            TextFormField(decoration: InputDecoration(labelText: '*E-mail', prefixIcon: Icon(Icons.email)),controller: _usernameController),
            TextFormField(decoration: InputDecoration(labelText: '*Full Name', prefixIcon: Icon(Icons.near_me)),controller: _fullnameController,),
            TextFormField(decoration: InputDecoration(labelText: '*Password', prefixIcon: Icon(Icons.vpn_key)),controller: _passwordController),                         
            TextFormField(decoration: InputDecoration(labelText: 'Line ID', prefixIcon: Icon(Icons.network_cell)),controller: _lineidController,),
            TextFormField(decoration: InputDecoration(labelText: 'Mobile No', prefixIcon: Icon(Icons.phone)),controller: _mobilenoController,),                                    
            TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),controller: _companyController,),                
             //=====================================================================
            // 3) BUTTON
            //======================================================================  
            SizedBox(height: 10.0,),  
                    RaisedButton(
                    child: Text("Register User"),
                    onPressed: () {
                      logger.i("username: " + _usernameController.text);
                      logger.i("password" + _passwordController.text);                      
                      //===========================================================
                      // VALIDATE TEXT
                      //===========================================================
                      if (_usernameController.text == "" || _passwordController.text == "") {showMessageBox(context, "Error","Please enter user name and password",actions: [dismissButton(context)]); logger.e("username or password can't be null");
                      } else {signupUser(context,{"username": _usernameController.text, "password": _passwordController.text,"fullname": _fullnameController.text,"lineid": _lineidController.text ,"mobileno": _mobilenoController.text ,"company": _companyController.text},_usernameController.text);
                      }
                    },
                  )       
          ])
        ),
      );
    } //END WIDGET

  } //END CLASS

