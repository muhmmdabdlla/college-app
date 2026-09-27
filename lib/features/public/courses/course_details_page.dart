import 'package:flutter/material.dart';

import 'models/course.dart';

class CourseDetailsPage extends StatelessWidget {
  final Course course;

  const CourseDetailsPage({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(course.shortName),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.secondary,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    course.icon,
                    size: 42,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    course.name,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    course.description,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white.withValues(alpha: 0.86),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            _Section(
              title: 'Course Overview',
              child: Text(
                'Detailed information about this programme will be provided here, including its academic focus, structure, and learning objectives.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: theme.textTheme.bodyLarge?.color
                      ?.withValues(alpha: 0.7),
                ),
              ),
            ),

            _Section(
              title: 'Programme Details',
              child: Column(
                children: [
                  _InfoRow(
                    label: 'Programme',
                    value: course.name,
                  ),
                  _InfoRow(
                    label: 'Duration',
                    value: 'To be updated',
                  ),
                  _InfoRow(
                    label: 'Eligibility',
                    value: 'To be updated',
                  ),
                ],
              ),
            ),

            _Section(
              title: 'Curriculum',
              child: Text(
                'The complete curriculum, subjects, practical components, and semester-wise details will be added here.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: theme.textTheme.bodyLarge?.color
                      ?.withValues(alpha: 0.7),
                ),
              ),
            ),

            _Section(
              title: 'Career Opportunities',
              child: Text(
                'Career opportunities and higher education pathways related to this programme will be added here.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: theme.textTheme.bodyLarge?.color
                      ?.withValues(alpha: 0.7),
                ),
              ),
            ),

            _Section(
              title: 'Admission Information',
              child: Text(
                'Admission details, application information, fees, and required documents will be added here.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: theme.textTheme.bodyLarge?.color
                      ?.withValues(alpha: 0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final Widget child;

  const _Section({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.textTheme.bodyMedium?.color
                    ?.withValues(alpha: 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}