import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kkunglegram_practice/config/palette.dart';
import 'package:kkunglegram_practice/provider/isSignupProvider.dart';

class TextFormFieldCard extends StatelessWidget {
  const TextFormFieldCard({
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
        ),
        InputsContainer(),
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
          if (!isSignupScreen)
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
          if (isSignupScreen)
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

class InputsContainer extends StatelessWidget {
  const InputsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Form(
        child: Column(
          children: [
            MyTextFormField(
              textVal: 'User name',
            ),
            SizedBox(
              height: 8,
            ),
            MyTextFormField(
              textVal: 'User email',
            ),
            SizedBox(
              height: 8,
            ),
            MyTextFormField(
              textVal: 'User passwrod',
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String textVal;

  const MyTextFormField({
    Key? key,
    required this.textVal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.account_circle,
          color: Palette.iconColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.textColor1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.textColor1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        hintText: textVal,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Palette.textColor1,
        ),
        contentPadding: EdgeInsets.all(10), //textfield 통통하기를 줄임
      ),
    );
  }
}
