//============================================================================
// 1) IMPORT
//============================================================================
import 'package:flutter/material.dart';
import 'package:menutest02/widgets/CustomIcons.dart';
import 'package:menutest02/widgets/DashboardMenu.dart';
import 'package:menutest02/widgets/SocialIcon.dart';
import 'ForgotPasswordPage.dart';
import 'SignupPage.dart';

//============================================================================
// 2)  MAIN CLASS: PAGE
//============================================================================
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

//============================================================================
//  3) GET UI (WIDGET)
//============================================================================
class _HomePageState extends State<HomePage> {
  int _counter = 2020;
  //============================================================================
  // FUNTION
  //============================================================================
  void _incrementCounter() {setState(() {
      _counter++;
    });
  }
  //============================================================================
  // CREATE WIDGET (UI)
  //============================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============================================================================
      // 1) APP BAR
      //============================================================================        
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      //============================================================================
      // 2) BODY
      //============================================================================        
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        //==============================================
        // CONTAINER
        //==============================================            
        Container(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: AssetImage('assets/images/login_bg.jpg')
                  //   )
               ),
              ),     
        //==============================================
        // PADDING ALL
        //============================================== 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            //children: <Widget>[]                
            //============================================================================
            // 3) CHILD: COLUMN
            //============================================================================         
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            //======================================================================
            // 1) LABEL
            //======================================================================  
            Text('i-SEE',style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),                         
            //======================================================================
            // 2) TEST (COUNTER)
            //======================================================================
            Text('$_counter',style: Theme.of(context).textTheme.headline4,),
            //======================================================================
            // 3) TEXT USER
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'E-mail', prefixIcon: Icon(Icons.email)),),
            //======================================================================
            // 4) TEXT PASSWORD
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.vpn_key)),),
            //======================================================================
            // 5) TEXT COMPANY
            //======================================================================
            TextFormField(decoration: InputDecoration(labelText: 'Company', prefixIcon: Icon(Icons.home)),),   
            //======================================================================
            // 6) BUTTON LOGIN
            //======================================================================
            SizedBox(height: 10.0,),  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardMenu()),);}, 
            color: Colors.blue, 
            child: Text('CLICK TO LOGIN',style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.normal),), ),    
            //======================================================================
            // 6) SIGN-IN GOOGLE
            //======================================================================   
            SizedBox(height: 20.0,),            
            Text('Dont have account. Social Network Login !!!',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),),  
            SizedBox(height: 20.0,),  
            _signInGoogleButton(),       
            //======================================================================
            // 7) TEXT SOCIAL NETWORK LOGIN
            //======================================================================
            SizedBox(height: 10.0,),      
            //======================================================================
            // 8) IMAGE BUTTON: LOGIN BY SOCIAL NETWORK
            //======================================================================
              // Row(
              //    mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SocialIcon(colors:[Color(0xFF102397),Color(0xFF187adf),Color(0xFF00eaf8),],icondata: CustomIcons.facebook),
              //     SocialIcon(colors:[Color(0xFFff4f38),Color(0xFFff355d)],icondata: CustomIcons.googlePlus),
              //     SocialIcon(colors:[Color(0xFF17ead9),Color(0xFF6078ea)],icondata: CustomIcons.twitter),    
              //   ],
              // ),
            //======================================================================
            // 9) SIGN-UP, FORGOT PASSWORD
            //======================================================================
            SizedBox(height: 10.0,),     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),);},color: Colors.blue, child: Text('Register New Account',style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.normal),),),
              RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()),);},color: Colors.blue, child: Text('Forgot Password',style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.normal),),),                
              ],
            ),
            //======================================================================
            // 10) SPARED
            //======================================================================
            //RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardMenu()),);},child: Text('Dashboard'),),
          ],
          ),

      ),
         ],
      ),
        //============================================================================
        // 4) FLOAT BUTTON
        //============================================================================    
        floatingActionButton: FloatingActionButton(
        //==========================================================================
        // CALL FUNCTION _INCREASECOUNTER
        //==========================================================================     
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.


    );
  }
}

//******************************************************************************************************************************************************************************
// GOOGLE AUTHEN
//******************************************************************************************************************************************************************************

//==========================================================================
// GOOGLE BUTTON
//==========================================================================       
Widget _signInGoogleButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {signInWithGoogle().whenComplete(() => DashboardMenu());},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            highlightElevation: 0,
            borderSide: BorderSide(color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage("assets/images/google_logo.png"), height: 35.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      
      signInWithGoogle() {
}   
  // //==========================================================================
  // // GOOGLE AUTHEN
  // //==========================================================================  
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // //==========================================================================
  // // GOOGLE SIGN-IN
  // //==========================================================================    
  // Future<String> signInWithGoogle() async {
  //   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  //   final AuthCredential credential = GoogleAuthProvider.getCredential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //   final FirebaseUser user = await _auth.signInWithCredential(credential);
  //   assert(user.email != null);
  //   assert(user.displayName != null);
  //   assert(!user.isAnonymous);
  //   assert(await user.getIdToken() != null);
  //   final FirebaseUser currentUser = await _auth.currentUser();
  //   assert(user.uid == currentUser.uid);
  //   return 'signInWithGoogle succeeded: $user';
  // }

  // //==========================================================================
  // // GOOGLE SIGN-OUT
  // //==========================================================================  
  // void signOutGoogle() async{
  //   await _googleSignIn.signOut();
  //   print("User Sign Out");
  // }