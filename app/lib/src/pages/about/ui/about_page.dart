import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sobre o dev'),
      body: Container(),
      bottomNavigationBar: const CustomNavigator(pageIndex: 3),
    );
  }
}
