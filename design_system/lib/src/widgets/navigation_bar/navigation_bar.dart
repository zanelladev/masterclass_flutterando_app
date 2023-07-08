import 'package:flutter/material.dart';

import '../../../design_system.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({super.key});

  @override
  State<CustomNavigator> createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return SafeArea(
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.track_changes,
                        color: theme.colorScheme.onBackground,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Atividades',
                  style: textStyles.headline3.copyWith(fontSize: 12),
                ),
              ],
            ),
            const VerticalDivider(
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
            ),
            Column(
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/github.png',
                          color: theme.colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Repositórios',
                  style: textStyles.headline3.copyWith(fontSize: 12),
                ),
              ],
            ),
            const VerticalDivider(
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
            ),
            Column(
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: theme.colorScheme.onBackground,
                      size: 35,
                    ),
                  ),
                ),
                Text(
                  'Sobre o dev',
                  style: textStyles.headline3.copyWith(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
