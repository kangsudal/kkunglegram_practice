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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4 + 120,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 40,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("NEXT"),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height-125,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Text("or Signup with"),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("Google"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(155,40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Palette.googleColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
