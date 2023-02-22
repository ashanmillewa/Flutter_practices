import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test23/src/constants/colors.dart';
import 'package:test23/src/constants/image_strings.dart';
import 'package:test23/src/constants/sizes.dart';
import 'package:test23/src/constants/text_strings.dart';
import 'package:test23/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget{
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body:SafeArea(
        child: Stack(
        children: [
          Obx(()=> AnimatedPositioned(
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30 ,
              duration: const Duration(milliseconds: 1600),
                child: Image(image: AssetImage(tSplashTopIcon),
                height: 100.0,
                width: 100.0,
                ),
              ),
            ),
          Obx(() => AnimatedPositioned(
            top:85,
            left: splashController.animate.value ? tDefaultSize : -80 ,
            duration: const Duration(milliseconds: 1600),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: splashController.animate.value ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(tAppTagLine,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
            ),
          ),
          Obx(() => AnimatedPositioned(
            bottom: splashController.animate.value ? 100 : 0,
            duration: const Duration(milliseconds: 1600),

            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1600),
              opacity: splashController.animate.value ? 1 : 0,
              child:Image(
                image: AssetImage(tSplashImage),
                height: 500.0,
                width: 400.0,
                ),
            ),
          ),
          ),
          Obx(()=> AnimatedPositioned(
                  bottom: splashController.animate.value ? 60 : 0,
                  right: tDefaultSize,
                  duration: const Duration(milliseconds: 1600),

                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Container(
                      width: tSplashContainerSize,
                      height: tSplashContainerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor,
                      ),

                    ),
                  )
              ),
              ),
            ],
          ),
        ),
      );
    }
}