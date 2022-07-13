import 'package:flutter/material.dart';
import 'package:kkunglegram_practice/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: ElevatedButton(
          child: Text("Sign in anon"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if(result == null){
              debugPrint('error signing in');
            }else{
              debugPrint('signed in');
              debugPrint(result.toString());
            }
          },
        ),
      ),
    );
  }
}
