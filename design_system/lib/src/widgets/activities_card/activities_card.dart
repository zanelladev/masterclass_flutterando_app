import 'package:flutter/material.dart';
import '../../../design_system.dart';

class ActivitiesCard extends StatelessWidget {
  const ActivitiesCard({super.key});

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
                padding: const EdgeInsets.all(10),
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
                            Icons.directions_run,
                            color: theme.colorScheme.background,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Animações',
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
                                text: '4',
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
                            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                            style: textStyles.description,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/github.png',
                          width: 30,
                          color: theme.colorScheme.onSecondary,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Acessar código fonte',
                          style: textStyles.headline3.copyWith(fontSize: 12),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(50)),
                            width: deviceInfo.size.width * 0.3,
                            height: 35,
                            child: Center(
                              child: Text(
                                'Ver Mais',
                                style:
                                    textStyles.headline3.copyWith(fontSize: 12),
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
