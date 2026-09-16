import 'package:flutter/material.dart';
import '../../app/theme.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final roles = [
      ('Student', Icons.school_rounded),
      ('Parent', Icons.family_restroom_rounded),
      ('Teacher', Icons.person_rounded),
      ('College Admin', Icons.admin_panel_settings_rounded),
      ('Public', Icons.language_rounded),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Your Role',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: roles.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final role = roles[index];

          return Material(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(18),
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${role.$1} selected'),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      role.$2,
                      color: AppColors.primaryBright,
                      size: 28,
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Text(
                        role.$1,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 17,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}