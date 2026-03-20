import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacex_galaxy_explorer/app/theme/app_colors.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;

  const ErrorScreen({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                size: 100,
                color: AppColors.error,
              ),
              const SizedBox(height: 32),
              Text(
                '404',
                style: GoogleFonts.orbitron(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'COSMIC DISCONNECTION',
                style: GoogleFonts.orbitron(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  color: AppColors.error,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'The trajectory you follow does not exist in our galaxy database.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(fontSize: 16, color: Colors.white70),
              ),
              if (error != null) ...[
                const SizedBox(height: 16),
                Text(
                  error.toString(),
                  style: GoogleFonts.firaMono(
                    fontSize: 12,
                    color: Colors.white38,
                  ),
                ),
              ],
              const SizedBox(height: 48),
              ElevatedButton.icon(
                onPressed: () => context.go('/rockets'),
                icon: const Icon(Icons.home),
                label: const Text('RETURN TO BASE'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
