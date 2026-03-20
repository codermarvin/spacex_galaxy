import 'package:flutter/material.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';

class StatusBadge extends StatelessWidget {
  final String label;
  final Color color;
  final IconData? icon;

  const StatusBadge({
    super.key,
    required this.label,
    required this.color,
    this.icon,
  });

  factory StatusBadge.success({required String label}) {
    return StatusBadge(
      label: label,
      color: AppColors.success,
      icon: Icons.check_circle_outline,
    );
  }

  factory StatusBadge.failure({required String label}) {
    return StatusBadge(
      label: label,
      color: AppColors.error,
      icon: Icons.error_outline,
    );
  }

  factory StatusBadge.pending({required String label}) {
    return StatusBadge(
      label: label,
      color: AppColors.warning,
      icon: Icons.access_time,
    );
  }

  factory StatusBadge.info({required String label}) {
    return StatusBadge(
      label: label,
      color: AppColors.info,
      icon: Icons.info_outline,
    );
  }

  factory StatusBadge.warning({required String label}) {
    return StatusBadge(
      label: label,
      color: AppColors.warning,
      icon: Icons.warning_amber_rounded,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withValues(alpha: 0.5), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
          ],
          Text(
            label.toUpperCase(),
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
