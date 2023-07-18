import 'package:flutter/material.dart';
import '../../../design_system.dart';

class ExercisesCard extends StatelessWidget {
  final int index;

  const ExercisesCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: textStyles.headline3.copyWith(fontSize: 16),
                ),
              ),
            ),
            Text(
              'Exercício ${index + 1}',
              style: textStyles.headline2,
            )
          ],
        ),
      ),
    );
  }
}
