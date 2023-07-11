import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RepositoryPage extends StatelessWidget {
  const RepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Repositórios'),
      body: Container(),
      bottomNavigationBar: const CustomNavigator(pageIndex: 2),
    );
  }
}
