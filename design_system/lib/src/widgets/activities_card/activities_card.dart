import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../design_system.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivitiesCard extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final int exercisesCount;
  final IconData icon;

  const ActivitiesCard({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.exercisesCount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    final deviceInfo = MediaQuery.of(context);
    return SizedBox(
      width: deviceInfo.size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: theme.colorScheme.surfaceVariant,
              ),
              width: deviceInfo.size.width * 0.95,
              height: deviceInfo.size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(50)),
                          width: 40,
                          height: 40,
                          child: Icon(
                            icon,
                            color: theme.colorScheme.background,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          title,
                          style: textStyles.headline3.copyWith(fontSize: 16),
                        ),
                        const Spacer(),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Exercícios: ',
                                style: textStyles.bodyText1),
                            TextSpan(
                                text: '$exercisesCount',
                                style: textStyles.headline3
                                    .copyWith(fontSize: 14)),
                          ],
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceInfo.size.width * 0.8,
                          child: Text(
                            description,
                            style: textStyles.description,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.github,
                          color: theme.colorScheme.onSecondary,
                          size: 25,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Acessar código fonte',
                          style: textStyles.headline3.copyWith(fontSize: 12),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Modular.to.pushNamed(
                              '/home/exercises',
                              arguments: id,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            width: deviceInfo.size.width * 0.3,
                            height: 35,
                            child: Center(
                              child: Text(
                                'Ver Mais',
                                style: textStyles.headline3.copyWith(
                                  fontSize: 12,
                                  color: theme.colorScheme.onError,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
