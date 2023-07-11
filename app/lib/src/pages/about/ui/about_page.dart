import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sobre o dev'),
      body: SizedBox(
        width: deviceInfo.size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [AboutCard()],
        ),
      ),
      bottomNavigationBar: const CustomNavigator(pageIndex: 3),
    );
  }
}
