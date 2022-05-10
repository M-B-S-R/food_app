import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_app/HomeScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

// import '../screen.dart';
class SignIn extends StatefulWidget {

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Future<User?> _googleSignUp() async{
    try{
      final GoogleSignIn _googleSignin = GoogleSignIn(
          scopes: [
            'email'
          ]
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final GoogleSignInAccount? googleUser = await _googleSignin.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(

        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("Signed In " + user?.displayName);
      return user;

    }
    catch(e){

      print(e.toString());
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background1.jpg')
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sign In To Continue"),
                  Text("Vegi", style: TextStyle(
                    fontSize: 50, color: Colors.white
                  ,shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.green.shade900,
                      offset: Offset(3,3),
                    )
                  ]),
                  ),


// with custom text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      SignInButton(
                        Buttons.Apple,
                        text: "Sign In with Apple",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign In with Google",
                        onPressed: () {
                          _googleSignUp().then(
                                (value) => Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context)=>HomeScreen(),
                                  ),),);
                        },
                        // padding: EdgeInsets.only(bottom: 100,),
                      ),
                      Text("By Signing in you are agreeing to our",
                        style: TextStyle(
                            color: Colors.grey[600]),),
                      Text("Terms And privacy policy",
                        style: TextStyle(
                            color: Colors.grey[600]),),
                    ],
                  ),



                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
