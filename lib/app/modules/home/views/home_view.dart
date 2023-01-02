import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/blink_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        
        body: Column(
          
          
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Text('Happy New Year',style: TextStyle(color: Colors.white,fontSize: 16,
               fontWeight: FontWeight.w900
               ),),
             ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Lottie.asset('assets/json/new_fireworks.json'),
                  Lottie.asset('assets/json/season-fireworks.json'),
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/images/myimg.jpg'),
                  ),
                ],
              ),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Teko',
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  WavyAnimatedText('HAPPY NEW YEAR'),
                  WavyAnimatedText('2023'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BlinkText(
              text: "Follow me @fuzailraza14",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
