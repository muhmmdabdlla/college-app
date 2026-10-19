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

    final overview = course.overview.trim().isNotEmpty
        ? course.overview
        : course.description;

    final hasProgrammeDetails = course.duration.trim().isNotEmpty ||
        course.eligibility.trim().isNotEmpty;

    final hasCurriculum = course.curriculum.isNotEmpty;

    final hasPracticalOpportunities =
        course.practicalOpportunities.isNotEmpty;

    final hasCareerOpportunities = course.careerOpportunities.isNotEmpty;

    final hasHigherEducation = course.higherEducation.isNotEmpty;

    final hasAdmissionInformation =
        course.admissionInfo.trim().isNotEmpty ||
        course.fees.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(course.shortName),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    // --------------------------------------------------
                    // COURSE HEADER
                    // --------------------------------------------------
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF087A4B),
                            Color(0xFF12A86A),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.14),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Icon(
                              course.icon,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(height: 22),
                          Text(
                            course.name,
                            style: theme.textTheme.headlineSmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            course.description,
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: Colors.white.withValues(alpha: 0.88),
                              height: 1.55,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // --------------------------------------------------
                    // OVERVIEW
                    // --------------------------------------------------
                    _ContentSection(
                      title: 'Course Overview',
                      icon: Icons.info_outline_rounded,
                      child: Text(
                        overview,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          height: 1.65,
                          color: theme.colorScheme.onSurface
                              .withValues(alpha: 0.78),
                        ),
                      ),
                    ),

                    // --------------------------------------------------
                    // PROGRAMME DETAILS
                    // --------------------------------------------------
                    if (hasProgrammeDetails)
                      _ContentSection(
                        title: 'Programme Details',
                        icon: Icons.school_outlined,
                        child: Column(
                          children: [
                            if (course.duration.trim().isNotEmpty)
                              _DetailRow(
                                icon: Icons.schedule_outlined,
                                label: 'Duration',
                                value: course.duration,
                              ),
                            if (course.eligibility.trim().isNotEmpty)
                              _DetailRow(
                                icon: Icons.verified_outlined,
                                label: 'Eligibility',
                                value: course.eligibility,
                              ),
                          ],
                        ),
                      ),

                    // --------------------------------------------------
                    // CURRICULUM
                    // --------------------------------------------------
                    if (hasCurriculum)
                      _ContentSection(
                        title: 'Curriculum',
                        icon: Icons.menu_book_outlined,
                        child: Column(
                          children: [
                            for (var index = 0;
                                index < course.curriculum.length;
                                index++)
                              _CurriculumCard(
                                section: course.curriculum[index],
                                initiallyExpanded: index == 0,
                              ),
                          ],
                        ),
                      ),

                    // --------------------------------------------------
                    // PRACTICAL OPPORTUNITIES
                    // --------------------------------------------------
                    if (hasPracticalOpportunities)
                      _ContentSection(
                        title: 'Practical Opportunities',
                        icon: Icons.science_outlined,
                        child: _BulletList(
                          items: course.practicalOpportunities,
                        ),
                      ),

                    // --------------------------------------------------
                    // CAREER OPPORTUNITIES
                    // --------------------------------------------------
                    if (hasCareerOpportunities)
                      _ContentSection(
                        title: 'Career Opportunities',
                        icon: Icons.work_outline_rounded,
                        child: _BulletList(
                          items: course.careerOpportunities,
                        ),
                      ),

                    // --------------------------------------------------
                    // HIGHER EDUCATION
                    // --------------------------------------------------
                    if (hasHigherEducation)
                      _ContentSection(
                        title: 'Higher Education',
                        icon: Icons.account_balance_outlined,
                        child: _BulletList(
                          items: course.higherEducation,
                        ),
                      ),

                    // --------------------------------------------------
                    // ADMISSION INFORMATION
                    // --------------------------------------------------
                    if (hasAdmissionInformation)
                      _ContentSection(
                        title: 'Admission Information',
                        icon: Icons.assignment_outlined,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (course.admissionInfo.trim().isNotEmpty)
                              Text(
                                course.admissionInfo,
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  height: 1.65,
                                  color: theme.colorScheme.onSurface
                                      .withValues(alpha: 0.78),
                                ),
                              ),
                            if (course.fees.trim().isNotEmpty) ...[
                              if (course.admissionInfo.trim().isNotEmpty)
                                const SizedBox(height: 18),
                              _DetailRow(
                                icon: Icons.payments_outlined,
                                label: 'Fees',
                                value: course.fees,
                              ),
                            ],
                          ],
                        ),
                      ),

                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// CONTENT SECTION
// ============================================================================

class _ContentSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _ContentSection({
    required this.title,
    required this.icon,
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
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  icon,
                  color: theme.colorScheme.primary,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

// ============================================================================
// DETAIL ROW
// ============================================================================

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 21,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 94,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                height: 1.5,
                color: theme.colorScheme.onSurface
                    .withValues(alpha: 0.78),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================================
// CURRICULUM CARD
// ============================================================================

class _CurriculumCard extends StatelessWidget {
  final CurriculumSection section;
  final bool initiallyExpanded;

  const _CurriculumCard({
    required this.section,
    required this.initiallyExpanded,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: 0.14),
        ),
      ),
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          tilePadding: const EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 4,
          ),
          childrenPadding: const EdgeInsets.fromLTRB(17, 0, 17, 16),
          iconColor: theme.colorScheme.primary,
          collapsedIconColor:
              theme.colorScheme.onSurface.withValues(alpha: 0.65),
          title: Text(
            section.title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          children: [
            for (final subject in section.subjects)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Icon(
                        Icons.circle,
                        size: 7,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        subject,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                          color: theme.colorScheme.onSurface
                              .withValues(alpha: 0.78),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// BULLET LIST
// ============================================================================

class _BulletList extends StatelessWidget {
  final List<String> items;

  const _BulletList({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final item in items)
          Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    size: 17,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      height: 1.5,
                      color: theme.colorScheme.onSurface
                          .withValues(alpha: 0.78),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}