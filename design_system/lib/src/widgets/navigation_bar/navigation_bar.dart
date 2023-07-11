import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../design_system.dart';

class CustomNavigator extends StatefulWidget {
  final int pageIndex;
  const CustomNavigator({
    super.key,
    required this.pageIndex,
  });

  @override
  State<CustomNavigator> createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  int pageIndex = 1;

  @override
  void initState() {
    super.initState();
    pageIndex = widget.pageIndex;
  }

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
                    onPressed: () {
                      if (pageIndex != 1) {
                        Modular.to.pushNamed('/home/', arguments: '1');
                      }
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: pageIndex == 1
                            ? theme.colorScheme.surfaceVariant
                            : const Color.fromARGB(0, 255, 255, 255),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        FontAwesomeIcons.bullseye,
                        color: theme.colorScheme.onBackground,
                        size: 25,
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
                    onPressed: () {
                      if (pageIndex != 2) {
                        Modular.to.pushNamed('/repository/', arguments: '1');
                      }
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: pageIndex == 2
                            ? theme.colorScheme.surfaceVariant
                            : const Color.fromARGB(0, 255, 255, 255),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: theme.colorScheme.onSecondary,
                        size: 25,
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
                  onPressed: () {
                    setState(() {
                      if (pageIndex != 3) {
                        Modular.to.pushNamed('/about/', arguments: '1');
                      }
                      pageIndex = 3;
                    });
                  },
                  icon: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: pageIndex == 3
                          ? theme.colorScheme.surfaceVariant
                          : const Color.fromARGB(0, 255, 255, 255),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidUser,
                      color: theme.colorScheme.onBackground,
                      size: 25,
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
