import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sobre o dev'),
      body: SizedBox(
        width: deviceInfo.size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AboutCard(),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tecnologias Favoritas',
                    style: textStyles.headline2,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const FavoriteTechologyCard();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigator(pageIndex: 3),
    );
  }
}
