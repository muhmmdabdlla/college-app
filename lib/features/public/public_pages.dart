import 'package:flutter/material.dart';

/// Shared layout for informational screens in the Public module.
class PublicInfoSection {
  final String title;
  final String body;
  final IconData icon;

  const PublicInfoSection({
    required this.title,
    required this.body,
    this.icon = Icons.check_circle_outline_rounded,
  });
}

class PublicInfoPage extends StatelessWidget {
  final String title;
  final String intro;
  final IconData icon;
  final List<PublicInfoSection> sections;

  const PublicInfoPage({
    super.key,
    required this.title,
    required this.intro,
    required this.icon,
    required this.sections,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Color(0xFF087A4B), Color(0xFF12A86A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, color: Colors.white, size: 32),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      intro,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        height: 1.55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            for (final section in sections) ...[
              _InfoSectionCard(section: section),
              const SizedBox(height: 14),
            ],
          ],
        ),
      ),
    );
  }
}

class _InfoSectionCard extends StatelessWidget {
  final PublicInfoSection section;

  const _InfoSectionCard({required this.section});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.dividerColor.withValues(alpha: 0.14),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(section.icon, color: theme.colorScheme.primary),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  section.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  section.body,
                  style: theme.textTheme.bodyMedium?.copyWith(height: 1.55),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AdmissionsPage extends StatelessWidget {
  const AdmissionsPage({super.key});

  @override
  Widget build(BuildContext context) => const PublicInfoPage(
        title: 'Admissions',
        icon: Icons.assignment_outlined,
        intro:
            'Find out how to prepare for admission to MIC Arts & Science College. Check the latest college and university notifications before applying.',
        sections: [
          PublicInfoSection(
            title: 'Admission process',
            icon: Icons.route_outlined,
            body:
                'Explore the available programmes, confirm the current eligibility criteria with the college, follow the published application process, submit the required information, and keep track of any instructions from the admission office.',
          ),
          PublicInfoSection(
            title: 'Eligibility',
            icon: Icons.verified_outlined,
            body:
                'Eligibility may differ by programme and admission year. Please confirm the current qualification, subject requirements, merit criteria and applicable university rules with the college before applying.',
          ),
          PublicInfoSection(
            title: 'Documents to prepare',
            icon: Icons.folder_open_outlined,
            body:
                'Commonly requested documents can include Plus Two or equivalent certificates and mark lists, transfer certificate, identification, photographs, and applicable community or category certificates. This is a preparation checklist, not the college’s confirmed official list.',
          ),
          PublicInfoSection(
            title: 'Fees and deadlines',
            icon: Icons.payments_outlined,
            body:
                'Fees, available seats, application dates and payment instructions can change. Obtain the current details directly from the college; no fee amounts or deadlines are assumed here.',
          ),
        ],
      );
}

class AboutMicPage extends StatelessWidget {
  const AboutMicPage({super.key});

  @override
  Widget build(BuildContext context) => const PublicInfoPage(
        title: 'About MIC',
        icon: Icons.account_balance_outlined,
        intro:
            'MIC Arts & Science College offers undergraduate programmes across commerce, management, computer science, tourism and humanities.',
        sections: [
          PublicInfoSection(
            title: 'Academic learning',
            icon: Icons.school_outlined,
            body:
                'Explore the college’s listed programmes and learn about the subjects, practical work and progression options associated with each course.',
          ),
          PublicInfoSection(
            title: 'Student development',
            icon: Icons.groups_outlined,
            body:
                'A college experience can include academic projects, communication, collaboration and other learning activities that help students prepare for future study and work.',
          ),
          PublicInfoSection(
            title: 'Official vision and mission',
            icon: Icons.flag_outlined,
            body:
                'The college’s official vision, mission and affiliation wording should be inserted from an approved college source before publication.',
          ),
          PublicInfoSection(
            title: 'Explore programmes',
            icon: Icons.menu_book_outlined,
            body:
                'Open Courses to browse the seven undergraduate programmes currently listed in this app.',
          ),
        ],
      );
}

class DepartmentsPage extends StatelessWidget {
  const DepartmentsPage({super.key});

  @override
  Widget build(BuildContext context) => const PublicInfoPage(
        title: 'Departments & Academic Areas',
        icon: Icons.domain_outlined,
        intro:
            'Browse academic areas associated with the programmes listed in the app. Official department names and staff information can be added once confirmed by the college.',
        sections: [
          PublicInfoSection(
            title: 'Commerce',
            icon: Icons.account_balance_outlined,
            body:
                'Related programmes: BCom Computer Application and BCom Cooperation.',
          ),
          PublicInfoSection(
            title: 'Management',
            icon: Icons.business_center_outlined,
            body:
                'Related programme: Bachelor of Business Administration (BBA).',
          ),
          PublicInfoSection(
            title: 'Computer Science',
            icon: Icons.computer_outlined,
            body: 'Related programme: BSc Computer Science.',
          ),
          PublicInfoSection(
            title: 'Tourism and Travel',
            icon: Icons.travel_explore_outlined,
            body: 'Related programme: BTTM.',
          ),
          PublicInfoSection(
            title: 'Economics',
            icon: Icons.bar_chart_outlined,
            body: 'Related programme: BA Economics.',
          ),
          PublicInfoSection(
            title: 'English',
            icon: Icons.menu_book_outlined,
            body: 'Related programme: BA English.',
          ),
        ],
      );
}

class FacilitiesPage extends StatelessWidget {
  const FacilitiesPage({super.key});

  @override
  Widget build(BuildContext context) => const PublicInfoPage(
        title: 'Facilities',
        icon: Icons.apartment_outlined,
        intro:
            'This section is reserved for verified information about campus facilities and student services.',
        sections: [
          PublicInfoSection(
            title: 'Learning facilities',
            icon: Icons.menu_book_outlined,
            body:
                'Details about library resources, classrooms, laboratories and other learning spaces should be confirmed with the college before being published.',
          ),
          PublicInfoSection(
            title: 'Student services',
            icon: Icons.support_agent_outlined,
            body:
                'Information about student support, transport, accessibility and other services will be added when the college confirms what is available.',
          ),
        ],
      );
}

class NoticesPage extends StatelessWidget {
  const NoticesPage({super.key});

  @override
  Widget build(BuildContext context) => const _UpdatesPage(
        title: 'Notices',
        icon: Icons.campaign_outlined,
        intro: 'Official college announcements will appear in this section.',
        emptyTitle: 'No notices available',
        emptyBody:
            'There are no published notices in this app yet. Notices can be connected to the college’s data source later.',
      );
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) => const _UpdatesPage(
        title: 'Events',
        icon: Icons.event_outlined,
        intro: 'Explore college events and activities.',
        emptyTitle: 'No events available',
        emptyBody:
            'There are no published events in this app yet. Events can be connected to the college’s data source later.',
      );
}

class PublicNotificationsPage extends StatelessWidget {
  const PublicNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) => const _UpdatesPage(
        title: 'Notifications',
        icon: Icons.notifications_none_rounded,
        intro: 'Important public updates from MIC College.',
        emptyTitle: 'You’re all caught up',
        emptyBody:
            'No public notifications have been published in the app yet.',
      );
}

class _UpdatesPage extends StatelessWidget {
  final String title;
  final IconData icon;
  final String intro;
  final String emptyTitle;
  final String emptyBody;

  const _UpdatesPage({
    required this.title,
    required this.icon,
    required this.intro,
    required this.emptyTitle,
    required this.emptyBody,
  });

  @override
  Widget build(BuildContext context) => PublicInfoPage(
        title: title,
        icon: icon,
        intro: intro,
        sections: [
          PublicInfoSection(
            title: emptyTitle,
            icon: Icons.inbox_outlined,
            body: emptyBody,
          ),
        ],
      );
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) => const PublicInfoPage(
        title: 'Contact & Location',
        icon: Icons.location_on_outlined,
        intro: 'Contact and location information for MIC Arts & Science College.',
        sections: [
          PublicInfoSection(
            title: 'College location',
            icon: Icons.map_outlined,
            body: 'Mahinabad, Kasaragod, Kerala – 671541.',
          ),
          PublicInfoSection(
            title: 'Phone',
            icon: Icons.phone_outlined,
            body: '+91 83048 31094',
          ),
          PublicInfoSection(
            title: 'Email',
            icon: Icons.email_outlined,
            body: 'support@micchattanchal.com',
          ),
          PublicInfoSection(
            title: 'Admissions and enquiries',
            icon: Icons.help_outline_rounded,
            body:
                'Use the Enquiry form in this app to prepare a question. The form is not connected to a delivery service yet.',
          ),
        ],
      );
}

class EnquiryPage extends StatelessWidget {
  const EnquiryPage({super.key});

  @override
  Widget build(BuildContext context) => const _PublicFormPage(
        title: 'Course Enquiry',
        subtitle:
            'Share your contact information and question. This form is currently a local prototype and will not send data to the college.',
        isFeedback: false,
      );
}

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) => const _PublicFormPage(
        title: 'Feedback',
        subtitle:
            'Share your feedback about the app or college information. This form is currently a local prototype and will not send data to the college.',
        isFeedback: true,
      );
}

class _PublicFormPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final bool isFeedback;

  const _PublicFormPage({
    required this.title,
    required this.subtitle,
    required this.isFeedback,
  });

  @override
  State<_PublicFormPage> createState() => _PublicFormPageState();
}

class _PublicFormPageState extends State<_PublicFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _questionController = TextEditingController();
  String? _selectedCourse;
  int _rating = 5;

  static const _courses = [
    'BCom Computer Application',
    'BCom Cooperation',
    'Bachelor of Business Administration',
    'BSc Computer Science',
    'BTTM',
    'BA Economics',
    'BA English',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _questionController.dispose();
    super.dispose();
  }

  String? _requiredValidator(String? value, String label) {
    if (value == null || value.trim().isEmpty) return 'Enter $label.';
    return null;
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Form validated. It has not been sent because a submission service is not connected yet.',
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  InputDecoration _formDecoration({
    required String label,
    required IconData icon,
    bool alignLabelWithHint = false,
  }) {
    final theme = Theme.of(context);
    final borderColor = theme.dividerColor.withValues(alpha: 0.45);

    OutlineInputBorder makeBorder({
      Color? color,
      double width = 1,
    }) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(
          color: color ?? borderColor,
          width: width,
        ),
      );
    }

    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      alignLabelWithHint: alignLabelWithHint,
      filled: true,
      fillColor: theme.colorScheme.surface,
      border: makeBorder(),
      enabledBorder: makeBorder(),
      focusedBorder: makeBorder(
        color: theme.colorScheme.primary,
        width: 1.5,
      ),
      errorBorder: makeBorder(
        color: theme.colorScheme.error,
      ),
      focusedErrorBorder: makeBorder(
        color: theme.colorScheme.error,
        width: 1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
            children: [
              Text(
                widget.subtitle,
                style: theme.textTheme.bodyLarge?.copyWith(height: 1.55),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _nameController,
                textCapitalization: TextCapitalization.words,
                decoration: _formDecoration(
                  label: 'Full name',
                  icon: Icons.person_outline_rounded,
                ),
                validator: (value) => _requiredValidator(value, 'your name'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: _formDecoration(
                  label: 'Phone number',
                  icon: Icons.phone_outlined,
                ),
                validator: (value) {
                  final required = _requiredValidator(value, 'your phone number');
                  if (required != null) return required;
                  final digits = value!.replaceAll(RegExp(r'\D'), '');
                  if (digits.length < 7 || digits.length > 15) {
                    return 'Enter a valid phone number.';
                  }
                  return null;
                },
              ),
              if (!widget.isFeedback) ...[
                const SizedBox(height: 16),
                FormField<String>(
                  validator: (value) => value == null ? 'Select a course.' : null,
                  builder: (field) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(14),
                        onTap: () async {
                          final selected = await showDialog<String>(
                            context: context,
                            builder: (dialogContext) => Dialog(
                              insetPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 420, maxHeight: 470),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(18, 20, 18, 14),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 46,
                                            height: 46,
                                            decoration: BoxDecoration(
                                              color: Theme.of(dialogContext).colorScheme.primary.withValues(alpha: 0.12),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Icon(Icons.school_rounded, color: Theme.of(dialogContext).colorScheme.primary),
                                          ),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('Choose your course', style: Theme.of(dialogContext).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
                                                const SizedBox(height: 3),
                                                Text('Select the programme you are interested in', style: Theme.of(dialogContext).textTheme.bodySmall),
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            tooltip: 'Close',
                                            onPressed: () => Navigator.pop(dialogContext),
                                            icon: const Icon(Icons.close_rounded),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Flexible(
                                        child: ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: _courses.length,
                                          separatorBuilder: (_, __) => const SizedBox(height: 7),
                                          itemBuilder: (context, index) {
                                            final course = _courses[index];
                                            final isSelected = course == _selectedCourse;
                                            final colors = Theme.of(dialogContext).colorScheme;
                                            return Material(
                                              color: isSelected ? colors.primary.withValues(alpha: 0.10) : colors.surfaceContainerLow,
                                              borderRadius: BorderRadius.circular(14),
                                              child: InkWell(
                                                borderRadius: BorderRadius.circular(14),
                                                onTap: () => Navigator.pop(dialogContext, course),
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.menu_book_rounded, size: 20, color: isSelected ? colors.primary : colors.onSurfaceVariant),
                                                      const SizedBox(width: 11),
                                                      Expanded(child: Text(course, style: TextStyle(fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500))),
                                                      if (isSelected) Icon(Icons.check_circle_rounded, color: colors.primary, size: 21),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                          if (selected != null) {
                            setState(() => _selectedCourse = selected);
                            field.didChange(selected);
                          }
                        },
                        child: InputDecorator(
                          isEmpty: false,
                          decoration: InputDecoration(
                            labelText: 'Interested course',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            prefixIcon: const Icon(Icons.school_outlined),
                            suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.surface,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Theme.of(context).dividerColor.withValues(alpha: 0.45),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Theme.of(context).dividerColor.withValues(alpha: 0.45),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.error,
                                width: 1.5,
                              ),
                            ),
                            errorText: field.errorText,
                          ),
                          child: Text(
                            _selectedCourse ?? 'Tap to select a course',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: _selectedCourse == null
                                  ? Theme.of(context).hintColor
                                  : Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ] else ...[
                const SizedBox(height: 16),
                DropdownButtonFormField<int>(
                  value: _rating,
                  decoration: const InputDecoration(
                    labelText: 'Rating',
                    prefixIcon: Icon(Icons.star_outline_rounded),
                    border: OutlineInputBorder(),
                  ),
                  items: List.generate(
                    5,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: Text('${index + 1} / 5'),
                    ),
                  ),
                  onChanged: (value) {
                    if (value != null) setState(() => _rating = value);
                  },
                ),
              ],
              const SizedBox(height: 16),
              TextFormField(
                controller: _questionController,
                minLines: 4,
                maxLines: 7,
                textCapitalization: TextCapitalization.sentences,
                decoration: _formDecoration(
                  label: widget.isFeedback ? 'Your feedback' : 'Your question',
                  icon: Icons.edit_note_rounded,
                  alignLabelWithHint: true,
                ).copyWith(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 70),
                    child: Icon(Icons.edit_note_rounded),
                  ),
                ),
                validator: (value) => _requiredValidator(
                  value,
                  widget.isFeedback ? 'your feedback' : 'your question',
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 54,
                child: FilledButton.icon(
                  onPressed: _submit,
                  icon: const Icon(Icons.check_rounded),
                  label: Text(widget.isFeedback ? 'Validate Feedback' : 'Validate Enquiry'),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Privacy note: avoid entering sensitive personal information. Nothing is transmitted by this prototype.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.65),
                  height: 1.45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
