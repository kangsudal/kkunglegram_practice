import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kkunglegram_practice/config/palette.dart';
import 'package:kkunglegram_practice/provider/isSignupProvider.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TitleBackgroundImage(),
          Card(),
        ],
      ),
    );
  }
}

class TitleBackgroundImage extends StatelessWidget {
  const TitleBackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 300,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image: AssetImage('images/bird.png'),
        //   ),
        // ),
        child: Container(
            padding: EdgeInsets.only(
              top: 90,
              left: MediaQuery.of(context).size.width * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 25,
                      color: Colors.blueAccent,
                    ),
                    children: [
                      TextSpan(
                        text: 'Kkunglegram!',
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 25,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "The world's cutest messaging app.",
                  style: TextStyle(
                      // letterSpacing: 1,
                      // fontSize: 25,
                      // color: Colors.blueAccent,
                      ),
                ),
              ],
            )),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 180,
      left: MediaQuery.of(context).size.width * 0.1,
      right: MediaQuery.of(context).size.width * 0.1,
      child: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.8,
        // margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              spreadRadius: 3,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: MyForm(),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LoginTab(),
            SignupTab(),
          ],
        )
      ],
    );
  }
}

class LoginTab extends ConsumerWidget {
  const LoginTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isSignupScreen = ref.watch(isSignupScreenProvider);
    return GestureDetector(
      onTap: () {
        ref.read(isSignupScreenProvider.notifier).update(false);
        if (isSignupScreen == false) {
          debugPrint("Now it is false");
        }
      },
      child: Column(
        children: [
          Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: !isSignupScreen ? Palette.activeColor : Palette.textColor1,
            ),
          ),
          Container(
            height: 2,
            width: 55,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class SignupTab extends ConsumerWidget {
  const SignupTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isSignupScreen = ref.watch(isSignupScreenProvider);
    return GestureDetector(
      onTap: () {
        ref.read(isSignupScreenProvider.notifier).update(true);
        if (isSignupScreen) {
          debugPrint("Now it is true");
        }
      },
      child: Column(
        children: [
          Text(
            'SIGNUP',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSignupScreen ? Palette.activeColor : Palette.textColor1,
            ),
          ),
          Container(
            height: 2,
            width: 55,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
