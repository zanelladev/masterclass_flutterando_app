import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../design_system.dart';

class FavoriteTechologyCard extends StatelessWidget {
  const FavoriteTechologyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.github,
              color: theme.colorScheme.onSecondary,
              size: 50,
            ),
          ),
          Text(
            'GitHub',
            style: textStyles.headline3.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
