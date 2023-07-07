import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: deviceInfo.size.width,
        color: theme.colorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 70,
                    maxHeight: 70,
                  ),
                  child: const Image(
                    image: AssetImage('assets/masterclass.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Transform(
                  transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'flutterando',
                        style: textStyles.headline1.copyWith(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        'Masterclass',
                        style: textStyles.headline1.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
