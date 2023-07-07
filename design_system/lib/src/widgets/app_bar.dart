import 'package:flutter/material.dart';
import '../../design_system.dart';

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
    final deviceInfo = MediaQuery.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.background,
      leading: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 5,
          maxHeight: 5,
        ),
        child: const Image(
          image: AssetImage(
            'assets/masterclass.png',
          ),
        ),
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
        Icon(
          Icons.more_vert,
          color: theme.colorScheme.onSecondary,
        ),
      ],
    );
  }
}
