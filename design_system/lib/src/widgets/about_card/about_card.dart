import 'package:flutter/material.dart';
import '../../../design_system.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return Container(
      width: deviceInfo.size.width * 0.95,
      height: 300,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: theme.colorScheme.background,
              minRadius: 23,
              maxRadius: 63,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/dev_picture.png'),
                minRadius: 20,
                maxRadius: 60,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Breno Moser',
              style: textStyles.headline3.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Breno Moser Breno Moser Breno Moser Breno Moser Breno Moser Breno Moser Breno Moser Breno Moser Breno Moser',
              style: textStyles.description,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: theme.colorScheme.onSecondary,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.githubAlt,
                    color: theme.colorScheme.onSecondary,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: theme.colorScheme.onSecondary,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: theme.colorScheme.onSecondary,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
