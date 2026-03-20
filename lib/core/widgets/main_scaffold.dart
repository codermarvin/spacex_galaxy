import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';
import 'package:spacex_galaxy_explorer/core/widgets/custom_app_bar.dart';

class MainScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool showAppBar;
  final bool extendBodyBehindAppBar;

  const MainScaffold({
    super.key,
    this.title,
    required this.body,
    this.actions,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.showAppBar = true,
    this.extendBodyBehindAppBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: Colors.black,
      appBar: showAppBar
          ? CustomAppBar(title: title ?? '', actions: actions)
          : null,
      body: Stack(
        children: [
          // Background "Deep Space" Effect
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 1.5,
                colors: [AppColors.nebulaBlue, AppColors.background],
              ),
            ),
          ),
          // Scrollable content
          SafeArea(child: body),
        ],
      ),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
