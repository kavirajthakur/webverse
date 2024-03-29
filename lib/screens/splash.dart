import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webverse/screens/phone.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MyPhone()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
            fontFamily: 'Bobbers',
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('الحمداللہ'),
              TyperAnimatedText('Alhamdulillah'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
    );

  }
}
