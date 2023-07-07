import 'package:flutter/material.dart';
import '../../../design_system.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyles = theme.extension<AppTextStylesExtension>()!;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 50,
            maxHeight: 50,
          ),
          child: Image.asset('assets/masterclass.png'),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Atividades',
              style: textStyles.headline1.copyWith(),
            ),
            Text(
              'Flutterando Masterclass',
              style: textStyles.headline3.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.dark_mode,
              color: theme.colorScheme.onSecondary,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
