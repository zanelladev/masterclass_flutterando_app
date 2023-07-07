import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      Modular.to.pushNamed('/home/', arguments: '1');
    });
    super.initState();
  }

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'flutterando',
                      style: textStyles.headline1.copyWith(
                        fontSize: 32,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -10),
                      child: Text(
                        'Masterclass',
                        style: textStyles.headline3.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
