import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kkunglegram_practice/config/palette.dart';
import 'package:kkunglegram_practice/provider/isSignupProvider.dart';
import 'package:kkunglegram_practice/screens/authenticate/widgets/TitleBackgroundImage.dart';
import 'package:kkunglegram_practice/screens/authenticate/widgets/textFormFieldCard.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TitleBackgroundImage(),
          TextFormFieldCard(),
        ],
      ),
    );
  }
}
