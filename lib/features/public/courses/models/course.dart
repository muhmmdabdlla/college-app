import 'package:flutter/material.dart';

class Course {
  final String id;
  final String name;
  final String shortName;
  final String description;
  final IconData icon;

  const Course({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.icon,
  });
}

const List<Course> collegeCourses = [
  Course(
    id: 'bcom-ca',
    name: 'BCom Computer Application',
    shortName: 'BCom CA',
    description:
        'Commerce education combined with computer applications and practical technology skills.',
    icon: Icons.computer_outlined,
  ),
  Course(
    id: 'bcom-cooperation',
    name: 'BCom Cooperation',
    shortName: 'BCom Cooperation',
    description:
        'Commerce studies with a focus on cooperation, business, finance, and related areas.',
    icon: Icons.account_balance_outlined,
  ),
  Course(
    id: 'bba',
    name: 'Bachelor of Business Administration',
    shortName: 'BBA',
    description:
        'Business and management education covering administration, entrepreneurship, and organizational skills.',
    icon: Icons.business_center_outlined,
  ),
  Course(
    id: 'bsc-cs',
    name: 'BSc Computer Science',
    shortName: 'BSc CS',
    description:
        'Computer science education covering programming, databases, software, networks, and modern technology.',
    icon: Icons.code_outlined,
  ),
  Course(
    id: 'bttm',
    name: 'BTTM',
    shortName: 'BTTM',
    description:
        'Tourism and travel studies covering hospitality, tourism management, and related professional areas.',
    icon: Icons.travel_explore_outlined,
  ),
  Course(
    id: 'ba-economics',
    name: 'BA Economics',
    shortName: 'BA Economics',
    description:
        'Study of economics, markets, finance, research, data analysis, and economic systems.',
    icon: Icons.bar_chart_outlined,
  ),
  Course(
    id: 'ba-english',
    name: 'BA English',
    shortName: 'BA English',
    description:
        'English language and literature studies with communication, writing, research, and critical thinking.',
    icon: Icons.menu_book_outlined,
  ),
];