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
    return SafeArea(
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.track_changes,
                        color: theme.colorScheme.onBackground,
                        size: 40,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Image.asset(
                        'assets/github.png',
                        color: theme.colorScheme.onBackground,
                        width: 40,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceVariant,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.person,
                      color: theme.colorScheme.onBackground,
                      size: 45,
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
