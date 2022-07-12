import 'package:flutter/material.dart';

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
