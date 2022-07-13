import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:kkunglegram_practice/models/user.dart' as kkung;
class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on Firebase User
  kkung.User? _userFromFirebaseUser(User? user){
    return user != null ? kkung.User(uid: user.uid):null;
  }
  // sign in anon
  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      debugPrint(e.toString());
      return null;
    }
  }

  // sign in with email & password

  // register with email & password

  // sign out
}