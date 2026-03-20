import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool showLogo;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.showLogo = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: showLogo
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.rocket_launch, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          : Text(
              title.toUpperCase(),
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: leading,
      actions: actions,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withValues(alpha: 0.8), Colors.transparent],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
