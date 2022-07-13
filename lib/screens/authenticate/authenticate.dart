import 'package:flutter/material.dart';
import 'package:kkunglegram_practice/screens/authenticate/sign_in.dart';

class Authenticate extends StatelessWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
