import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp/main.dart';

class LoginScreen extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  _login(BuildContext context) async {
    GoogleSignInAccount user = await _googleSignIn.signIn();
    GoogleSignInAuthentication auth = await user.authentication;
    FirebaseUser fUser = await _auth.signInWithGoogle(
      idToken: auth.idToken,
      accessToken: auth.accessToken,
    );
    print("Iniciado sesion con usuario ${fUser.displayName}");
    if (fUser != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MaterialApp(home: MyHomePage())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: RaisedButton(onPressed: () => _login));
  }
}
