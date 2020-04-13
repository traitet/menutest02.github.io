//============================================================================
// 1) IMPORT
//============================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:menutest02/components/show_notification.dart';
import 'package:menutest02/services/UpdateUser.dart';
import 'package:menutest02/services/logger_service.dart';

//============================================================
// 2) MAIN CLASS
//============================================================
class UpdateProfilePage extends StatefulWidget {
  //==========================================================
  // DECLARE VARIABLE & INITIATE VARIABLE
  //==========================================================
  final String username;
  UpdateProfilePage({Key key, @required this.username})
      : super(key: key);
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
  }

//===========================================================
// 3) MAIN UI
//===========================================================  
  class _UpdateProfileState extends State<UpdateProfilePage> {
  //=========================================================
  // 1) DECLARE VARIABLE
  //=========================================================
      final _usernameController = TextEditingController();
      final _passwordController = TextEditingController();
      final _fullnameController = TextEditingController();  
      final _lineidController = TextEditingController();    
      final _mobilenoController = TextEditingController();  
      final _companyController = TextEditingController(); 
  //=========================================================
  // 2) GET DATA FROM DB
  //=========================================================
    @override
    void initState() {

      super.initState();

      Firestore.instance.collection("TM_USER").document(widget.username)
          .get()
          .then((value) {
        setState(() {
           _usernameController.text= value.data["username"];
          _passwordController.text  = value.data["password"];    
          _lineidController.text = value.data["lineid"];
          _fullnameController.text = value.data["fullname"];
          _mobilenoController.text = value.data["mobileno"];
          _companyController.text = value.data["company"];     
                
        });
      });
          
    }
 
    @override
    //=======================================================
    // 1) WIDGET
    //=======================================================
    Widget build(BuildContext context){

      return Scaffold(
        //===================================================
        // 2) APP BAR
        //===================================================      
        appBar: AppBar(title: Text("Update Profile"),),
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
            Text('Update User: ' + widget.username ,),      
            Text('Just fill details below !!',),                      
             //=====================================================================
            // 2) TEXT CONTROL
            //======================================================================  
            TextFormField(decoration: InputDecoration(labelText: '*E-mail', prefixIcon: Icon(Icons.email)),controller: _usernameController),
            TextFormField(decoration: InputDecoration(labelText: '*Full Name', prefixIcon: Icon(Icons.near_me)),controller: _fullnameController,),          
            TextFormField(decoration: InputDecoration(labelText: '*Password', prefixIcon: Icon(Icons.vpn_key)),controller: _passwordController,),                       
            TextFormField(decoration: InputDecoration(labelText: 'Line ID', prefixIcon: Icon(Icons.network_cell)),controller: _lineidController,),
            TextFormField(decoration: InputDecoration(labelText: 'Mobile No', prefixIcon: Icon(Icons.phone)),controller: _mobilenoController,),                                    
            TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),controller: _companyController,), 
            RaisedButton(
                    child: Text("Save Update"),
                    onPressed: () {
                      //===========================================================
                      // VALIDATE TEXT
                      //===========================================================
                      if (_usernameController.text == "" || _passwordController.text == "") {
                        showMessageBox(context, "Error",
                            "Please enter user name and password to login",
                            actions: [dismissButton(context)]);
                        logger.e("username or password can't be null");
                      //===========================================================
                      // VALIDATE "OK"
                      //===========================================================                         
                      } else {updateUser(context,{"username": _usernameController.text, "password": _passwordController.text, "fullname": _fullnameController.text, "lineid": _lineidController.text, "mobileno": _mobilenoController.text, "company": _companyController.text},_usernameController.text);}                        
                    },
                  )
          ]
        ),
        ),
      );
    } //END WIDGET

  } //END CLASS