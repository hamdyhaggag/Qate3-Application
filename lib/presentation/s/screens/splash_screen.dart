import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qate3_app/presentation/s/screens/screen_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInQuad,
    );

    _animationController.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ScreenLayout(selectedIndex: 3),
        ),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenSize = constraints.biggest;

          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Opacity(
                            opacity: _animation.value,
                            child: child,
                          );
                        },
                        child: Image(
                          image: const AssetImage('assets/images/logo.png'),
                          height: screenSize.width * 0.9,
                          width: screenSize.width * 0.9,
                        ),
                      ),
                      // Positioned(
                      //   bottom: screenSize.height * 0.090,
                      //   child: AnimatedBuilder(
                      //     animation: _animation,
                      //     builder: (context, child) {
                      //       return Opacity(
                      //         opacity: _animation.value,
                      //         child: child,
                      //       );
                      //     },
                      //     child: Text(
                      //       "مـــن أجـــل فــلــســطــيــن",
                      //       style: TextStyle(
                      //         fontSize: screenSize.width * 0.04,
                      //         color: const Color(0xff007a3c),
                      //         fontWeight: FontWeight.bold,
                      //         fontFamily: 'Cairo',
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
