import 'package:flutter/material.dart';
import '../../app/theme.dart';
import '../student/login/student_login_screen.dart';
import '../public/public_home_page.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final roles = [
      (
        'Student',
        'Academic information & attendance',
        Icons.school_rounded,
      ),
      (
        'Parent',
        "Track your child's academic progress",
        Icons.family_restroom_rounded,
      ),
      (
        'Teacher',
        'Manage classes & academic activities',
        Icons.person_rounded,
      ),
      (
        'College Admin',
        'Manage the college & its operations',
        Icons.admin_panel_settings_rounded,
      ),
      (
        'Public',
        'Explore MIC College & programs',
        Icons.language_rounded,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Select Your Role',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(24, 18, 24, 32),
        itemCount: roles.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final role = roles[index];

          return Material(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                if (role.$1 == 'Student') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const StudentLoginScreen(),
                    ),
                  );
                } else if (role.$1 == 'Public') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const PublicHomePage(),
                    ),
                  );
                }else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${role.$1} section coming next'),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.10),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        role.$3,
                        color: AppColors.primaryBright,
                        size: 27,
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            role.$1,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            role.$2,
                            style: const TextStyle(
                              fontSize: 13,
                              height: 1.3,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
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