import 'package:flutter/material.dart';
import '../../../design_system.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    final double progressWidth = deviceInfo.size.width * 0.6;
    return Container(
      width: deviceInfo.size.width * 0.95,
      height: 200,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text(
                  'Dart/Flutter',
                  style: textStyles.bodyText1,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Container(
                        width: progressWidth,
                        height: 10,
                        color: theme.colorScheme.background,
                      ),
                      Container(
                        width: progressWidth * 0.75,
                        height: 10,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'React',
                  style: textStyles.bodyText1,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Container(
                        width: progressWidth,
                        height: 10,
                        color: theme.colorScheme.background,
                      ),
                      Container(
                        width: progressWidth * 0.5,
                        height: 10,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Javascript',
                  style: textStyles.bodyText1,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Container(
                        width: progressWidth,
                        height: 10,
                        color: theme.colorScheme.background,
                      ),
                      Container(
                        width: progressWidth * 0.65,
                        height: 10,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'HTML',
                  style: textStyles.bodyText1,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Container(
                        width: progressWidth,
                        height: 10,
                        color: theme.colorScheme.background,
                      ),
                      Container(
                        width: progressWidth * 0.9,
                        height: 10,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'CSS',
                  style: textStyles.bodyText1,
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Container(
                        width: progressWidth,
                        height: 10,
                        color: theme.colorScheme.background,
                      ),
                      Container(
                        width: progressWidth * 0.75,
                        height: 10,
                        color: theme.colorScheme.primary,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
