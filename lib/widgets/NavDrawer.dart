//===========================================================
// 1) IMPORT
//===========================================================
import 'package:flutter/material.dart';
import 'package:menutest02/screens/FormPage.dart';
import 'package:menutest02/screens/HomePage.dart';
import 'package:menutest02/screens/ReportPage.dart';
import 'package:menutest02/screens/SearchPage.dart';
import 'package:menutest02/screens/UpdateProfilePage.dart';



//=============================================================
// 2) MAIN CLASS
//=============================================================
class NavDrawer extends StatelessWidget {
  @override
  //===========================================================
  // 3) BUILD WIDGET
  //===========================================================  
  Widget build(BuildContext context) {
    //=========================================================
    // 4) NAVIGATION BAR
    //=========================================================      
    return Drawer(
      child: ListView(
        //=====================================================
        // 1) PADDING
        //=====================================================     
        padding: EdgeInsets.zero,
        children: <Widget>[
          //===================================================
          // 2) HEADER
          //===================================================           
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/wfh01.jpg'))),
          ),
          //====================================================
          // 5) MENU
          //====================================================            
          ListTile(leading: Icon(Icons.input), title: Text('Welcome'),onTap: () => {},),
          ListTile(leading: Icon(Icons.pages), title: Text('D-Form'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage()),)},),
          ListTile(leading: Icon(Icons.repeat_one), title: Text('Search'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => ReportPage()),)},),  
          ListTile(leading: Icon(Icons.search), title: Text('Report'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()),)},),                            
          ListTile(leading: Icon(Icons.verified_user), title: Text('Profile'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfilePage(username: "traitet",)),)},),    
          ListTile(leading: Icon(Icons.settings), title: Text('Settings'),onTap: () => {},),
          ListTile(leading: Icon(Icons.border_color), title: Text('Feedback'),onTap: () => {},),          
          ListTile(leading: Icon(Icons.exit_to_app), title: Text('Logout'),onTap:  () => {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),)},),    
        ],
      ),
    );
  }
}