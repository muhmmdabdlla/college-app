import 'package:flutter/material.dart';

class Course {
  final String id;
  final String name;
  final String shortName;
  final String description;
  final IconData icon;

  // General information
  final String overview;
  final String duration;
  final String eligibility;

  // Academic information
  final List<CurriculumSection> curriculum;
  final List<String> practicalOpportunities;

  // Career and further education
  final List<String> careerOpportunities;
  final List<String> higherEducation;

  // Admission information
  final String admissionInfo;
  final String fees;

  const Course({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
    required this.icon,
    this.overview = '',
    this.duration = '',
    this.eligibility = '',
    this.curriculum = const [],
    this.practicalOpportunities = const [],
    this.careerOpportunities = const [],
    this.higherEducation = const [],
    this.admissionInfo = '',
    this.fees = '',
  });
}

/// Represents a curriculum section, such as a semester or academic year.
class CurriculumSection {
  final String title;
  final List<String> subjects;

  const CurriculumSection({
    required this.title,
    required this.subjects,
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

    // Course overview
    overview:
        'BCom Computer Application is an undergraduate programme combining commerce education with computer applications and modern digital technologies. It develops knowledge in accounting, business management, economics, finance, data handling, office productivity and digital business tools. It can prepare students for opportunities in commerce, accounting, business administration, banking, finance and IT-enabled services.',

    // These details need confirmation from the college.
    duration: 'Confirm with the college',
    eligibility: 'Confirm the current eligibility criteria with the college',

    // Curriculum topics shown in your reference screenshots.
    // These are topics, NOT a verified semester-wise syllabus.
    curriculum: [
      CurriculumSection(
        title: 'Financial Accounting',
        subjects: [
          'Fundamentals of accounting',
          'Journal entries and ledgers',
          'Trial balance and final accounts',
          'Preparation of financial statements',
        ],
      ),
      CurriculumSection(
        title: 'Business Management',
        subjects: [
          'Principles of business management',
          'Planning and organising',
          'Staffing and directing',
          'Controlling and decision-making',
        ],
      ),
      CurriculumSection(
        title: 'Computer Fundamentals',
        subjects: [
          'Computer hardware and software',
          'Operating systems',
          'File management',
          'Networking fundamentals',
        ],
      ),
      CurriculumSection(
        title: 'MS Office',
        subjects: [
          'Microsoft Word',
          'Microsoft Excel',
          'Microsoft PowerPoint',
          'Office productivity tools',
        ],
      ),
      CurriculumSection(
        title: 'Advanced Excel',
        subjects: [
          'Formulas and functions',
          'Charts and data analysis',
          'Sorting and filtering',
          'Pivot tables and business data tools',
        ],
      ),
      CurriculumSection(
        title: 'Business Statistics',
        subjects: [
          'Statistical concepts for business',
          'Averages and probability',
          'Correlation',
          'Data interpretation',
        ],
      ),
      CurriculumSection(
        title: 'Business Economics',
        subjects: [
          'Demand and supply',
          'Markets and production',
          'Pricing',
          'Business decisions and the economy',
        ],
      ),
      CurriculumSection(
        title: 'E-Commerce',
        subjects: [
          'Online business operations',
          'Digital marketplaces',
          'Payment systems',
          'E-commerce models and customer management',
        ],
      ),
      CurriculumSection(
        title: 'Database Management',
        subjects: [
          'Database concepts and data organisation',
          'Tables and queries',
          'Relationships between data',
          'Database management fundamentals',
        ],
      ),
      CurriculumSection(
        title: 'Web Technology',
        subjects: [
          'Website fundamentals',
          'HTML and CSS',
          'Basic web development',
          'Website structure',
        ],
      ),
      CurriculumSection(
        title: 'Programming Fundamentals',
        subjects: [
          'Variables and conditions',
          'Loops and functions',
          'Problem-solving',
          'Programming logic',
        ],
      ),
      CurriculumSection(
        title: 'Business Communication',
        subjects: [
          'Professional presentations',
          'Business correspondence',
          'Interviews and group discussions',
          'Workplace communication',
        ],
      ),
      CurriculumSection(
        title: 'Digital Business Tools',
        subjects: [
          'Digital tools for business operations',
          'Productivity and collaboration',
          'Documentation',
          'Business data management',
        ],
      ),
    ],

    // Practical learning
    practicalOpportunities: [
      'Accounting exercises and financial statement preparation',
      'Spreadsheet-based calculations and data analysis',
      'Office productivity and documentation tasks',
      'Database and data management exercises',
      'Basic website development activities',
      'Programming and problem-solving exercises',
      'Digital business and e-commerce case studies',
    ],

    // Career opportunities from the reference screenshots.
    careerOpportunities: [
      'Accountant',
      'Junior Accountant',
      'Accounts Assistant',
      'Office Administrator',
      'Business Executive',
      'Computer Operator',
      'Data Entry Executive',
      'Banking Executive',
      'Finance Assistant',
      'Customer Relationship Executive',
      'MIS Executive',
      'E-Commerce Executive',
      'Web Support Executive',
      'Digital Business Assistant',
    ],

    // Higher education options from the reference screenshots.
    higherEducation: [
      'Master of Commerce (MCom)',
      'Master of Business Administration (MBA)',
      'Master of Computer Applications (MCA)',
      'Professional accounting courses',
      'Finance-related programmes',
      'Other specialised postgraduate programmes',
    ],

    admissionInfo:
        'Admission procedures, eligibility requirements and application dates must be confirmed with MIC Arts & Science College.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'bcom-cooperation',
    name: 'BCom Cooperation',
    shortName: 'BCom Cooperation',
    description:
        'Commerce education focused on cooperative principles, management, accounting, banking, and finance.',
    icon: Icons.account_balance_outlined,

    overview:
        'BCom Cooperation is an undergraduate commerce programme that focuses on cooperative principles, management, accounting, banking, finance, business administration, and cooperative law. The programme develops knowledge and practical skills required to manage and operate cooperative societies, financial institutions, banks, business organisations, and related sectors. Students gain a foundation in commerce alongside specialised knowledge of cooperative management and financial services.',

    duration: 'Confirm with the college',
    eligibility: 'Confirm the current eligibility criteria with the college',

    // General curriculum topics based on your reference screenshots.
    // These are not a verified semester-wise syllabus.
    curriculum: [
      CurriculumSection(
        title: 'Principles of Cooperation',
        subjects: [
          'Basic principles and values of cooperation',
          'Objectives and importance of cooperation',
          'Cooperative organisations in society and the economy',
        ],
      ),
      CurriculumSection(
        title: 'Cooperative Management',
        subjects: [
          'Planning and organising',
          'Staffing and directing',
          'Coordination and control',
          'Management of cooperative organisations',
        ],
      ),
      CurriculumSection(
        title: 'Financial Accounting',
        subjects: [
          'Journal entries and ledgers',
          'Trial balance',
          'Final accounts',
          'Financial statements and accounting practices',
        ],
      ),
      CurriculumSection(
        title: 'Cooperative Accounting',
        subjects: [
          'Accounting practices in cooperative societies',
          'Receipts and payments',
          'Reserves',
          'Financial reporting',
        ],
      ),
      CurriculumSection(
        title: 'Business Management',
        subjects: [
          'Management concepts and organisational structures',
          'Decision-making and leadership',
          'Motivation',
          'Business administration',
        ],
      ),
      CurriculumSection(
        title: 'Business Economics',
        subjects: [
          'Demand and supply',
          'Production and pricing',
          'Markets',
          'Economic factors affecting cooperative businesses',
        ],
      ),
      CurriculumSection(
        title: 'Cooperative Law',
        subjects: [
          'Legal framework for cooperative organisations',
          'Rules and regulations',
          'Registration procedures',
          'Rights, duties, and responsibilities of cooperative members',
        ],
      ),
      CurriculumSection(
        title: 'Banking and Financial Services',
        subjects: [
          'Banking operations and financial institutions',
          'Loans and deposits',
          'Credit facilities',
          'Financial services for cooperative organisations',
        ],
      ),
      CurriculumSection(
        title: 'Cooperative Credit Management',
        subjects: [
          'Credit systems and loan procedures',
          'Credit assessment',
          'Recovery methods',
          'Management of financial resources in cooperative societies',
        ],
      ),
      CurriculumSection(
        title: 'Computer Applications',
        subjects: [
          'Computer skills for office administration',
          'Documentation and data management',
          'Digital communication',
          'Computer applications in cooperative business operations',
        ],
      ),
      CurriculumSection(
        title: 'MS Office',
        subjects: [
          'Microsoft Word',
          'Microsoft Excel',
          'Microsoft PowerPoint',
          'Office productivity tools',
        ],
      ),
      CurriculumSection(
        title: 'Business Communication',
        subjects: [
          'Business correspondence',
          'Professional presentations',
          'Interviews and meetings',
          'Workplace communication',
        ],
      ),
      CurriculumSection(
        title: 'Cooperative Marketing',
        subjects: [
          'Marketing principles and market research',
          'Customer relationships',
          'Product promotion',
          'Sales strategies and cooperative marketing activities',
        ],
      ),
    ],

    practicalOpportunities: [
      'Accounting exercises for cooperative societies',
      'Preparation of financial records and statements',
      'Cooperative management case studies',
      'Banking and credit-management exercises',
      'Office administration and documentation',
      'Spreadsheet and computer application exercises',
      'Cooperative marketing and business communication activities',
    ],

    careerOpportunities: [
      'Cooperative Manager',
      'Cooperative Secretary',
      'Accountant',
      'Junior Accountant',
      'Accounts Assistant',
      'Office Administrator',
      'Business Executive',
      'Banking Executive',
      'Finance Assistant',
      'Credit Officer',
      'Loan Officer',
      'MIS Executive',
      'Customer Relationship Executive',
    ],

    higherEducation: [
      'Master of Commerce (MCom)',
      'Master of Business Administration (MBA)',
      'Cooperative management programmes',
      'Finance-related programmes',
      'Professional accounting courses',
      'Other specialised postgraduate programmes',
    ],

    admissionInfo:
        'Confirm the current admission process, eligibility requirements, and application dates with MIC Arts & Science College.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'bba',
    name: 'Bachelor of Business Administration',
    shortName: 'BBA',
    description:
        'Business management and administration, covering finance, marketing, human resources, and entrepreneurship.',
    icon: Icons.business_center_outlined,

    overview:
        'Bachelor of Business Administration is an undergraduate programme designed to develop strong knowledge and practical skills in business management and administration. The programme covers management, accounting, economics, marketing, human resources, finance, entrepreneurship, business communication, computer applications, and digital business practices. It prepares students for careers in corporate organisations, banking, finance, marketing, human resources, sales, administration, entrepreneurship, and other business-related sectors.',

    duration: 'Confirm with the college',
    eligibility: 'Confirm the current eligibility criteria with the college',

    // General curriculum topics based on the supplied screenshots.
    // This is not a verified semester-wise syllabus.
    curriculum: [
      CurriculumSection(
        title: 'Principles of Management',
        subjects: [
          'Fundamentals of management',
          'Planning, organising, staffing, and directing',
          'Coordination and controlling',
          'Managerial decision-making',
        ],
      ),
      CurriculumSection(
        title: 'Business Organization',
        subjects: [
          'Different forms of business organisations',
          'Organisational structures',
          'Ownership patterns',
          'Advantages and limitations of business organisations',
        ],
      ),
      CurriculumSection(
        title: 'Financial Accounting',
        subjects: [
          'Accounting principles and concepts',
          'Recording and classifying financial transactions',
          'Preparation and interpretation of financial statements',
        ],
      ),
      CurriculumSection(
        title: 'Business Economics',
        subjects: [
          'Demand and supply',
          'Production and cost',
          'Pricing',
          'Market structures',
          'Economic concepts used in business decisions',
        ],
      ),
      CurriculumSection(
        title: 'Marketing Management',
        subjects: [
          'Marketing concepts and market research',
          'Consumer behaviour',
          'Product planning and pricing',
          'Promotion and distribution',
          'Modern marketing strategies',
        ],
      ),
      CurriculumSection(
        title: 'Human Resource Management',
        subjects: [
          'Recruitment and selection',
          'Employee training',
          'Performance management',
          'Employee motivation and compensation',
          'Workplace relations',
        ],
      ),
      CurriculumSection(
        title: 'Business Statistics',
        subjects: [
          'Statistical methods used in business',
          'Averages and probability',
          'Correlation and data analysis',
          'Statistical interpretation for business decisions',
        ],
      ),
      CurriculumSection(
        title: 'Financial Management',
        subjects: [
          'Financial planning',
          'Investment decisions',
          'Working capital',
          'Capital budgeting',
          'Sources of finance',
          'Financial decision-making',
        ],
      ),
      CurriculumSection(
        title: 'Entrepreneurship Development',
        subjects: [
          'Entrepreneurial skills and business ideas',
          'Opportunity identification',
          'Business planning',
          'Startup management',
          'Innovation',
        ],
      ),
      CurriculumSection(
        title: 'Business Communication',
        subjects: [
          'Business correspondence',
          'Presentations and interviews',
          'Meetings and group discussions',
          'Professional workplace communication',
        ],
      ),
      CurriculumSection(
        title: 'Computer Applications',
        subjects: [
          'Digital documentation',
          'Data management',
          'Business presentations',
          'Digital communication',
          'Office applications',
        ],
      ),
      CurriculumSection(
        title: 'MS Office',
        subjects: [
          'Microsoft Word',
          'Microsoft Excel',
          'Microsoft PowerPoint',
          'Productivity tools used in business organisations',
        ],
      ),
      CurriculumSection(
        title: 'Digital Marketing',
        subjects: [
          'Social media marketing',
          'Search engine optimisation (SEO)',
          'Content marketing',
          'Online advertising',
          'Email marketing',
          'Other digital marketing techniques',
        ],
      ),
    ],

    practicalOpportunities: [
      'Practical management training',
      'Business case studies and decision-making exercises',
      'Marketing research and campaign planning',
      'Financial planning and accounting exercises',
      'Business communication and presentations',
      'Computer applications and spreadsheet exercises',
      'Digital marketing activities',
      'Entrepreneurship and business planning projects',
    ],

    careerOpportunities: [
      'Business Development Executive',
      'Business Executive',
      'Marketing Executive',
      'Sales Executive',
      'HR Executive',
      'Office Administrator',
      'Operations Executive',
      'Customer Relationship Executive',
      'Finance Executive',
      'Banking Executive',
      'Management Trainee',
      'Administrative Executive',
    ],

    higherEducation: [
      'Master of Business Administration (MBA)',
      'Master of Commerce (MCom)',
      'Postgraduate management programmes',
      'Professional accounting courses',
      'Finance programmes',
      'Marketing specialisations',
      'Human resource management programmes',
      'Other higher education programmes',
    ],

    admissionInfo:
        'Contact MIC Arts & Science College to confirm current admission requirements, eligibility, application dates, and available seats.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'bsc-cs',
    name: 'BSc Computer Science',
    shortName: 'BSc CS',
    description:
        'Computer science education covering programming, databases, software, networks, and modern technology.',
    icon: Icons.code_outlined,

    overview:
        'BSc Computer Science is an undergraduate programme that provides strong theoretical and practical knowledge in computer science, programming, networking, databases, artificial intelligence, cyber security, cloud computing, and software development. The programme prepares students for careers in IT industries, software companies, research, education, and higher studies.',

    duration: 'Confirm with the college',
    eligibility: 'Confirm the current eligibility criteria with the college',

    curriculum: [
      CurriculumSection(
        title: 'Programming in C',
        subjects: [
          'Variables and data types',
          'Loops and functions',
          'Arrays and pointers',
          'File handling',
        ],
      ),
      CurriculumSection(
        title: 'Object Oriented Programming (Java)',
        subjects: [
          'Classes and objects',
          'Inheritance and polymorphism',
          'Abstraction',
          'Exception handling',
        ],
      ),
      CurriculumSection(
        title: 'Python Programming',
        subjects: [
          'Python programming fundamentals',
          'Data structures and functions',
          'Modules and file handling',
          'Object-oriented programming',
        ],
      ),
      CurriculumSection(
        title: 'Data Structures',
        subjects: [
          'Arrays, stacks, and queues',
          'Linked lists',
          'Trees and graphs',
          'Searching and sorting algorithms',
        ],
      ),
      CurriculumSection(
        title: 'Database Management System',
        subjects: [
          'Relational databases and SQL',
          'Database normalisation',
          'Transactions and indexing',
          'Database design',
        ],
      ),
      CurriculumSection(
        title: 'Operating Systems',
        subjects: [
          'Processes and memory management',
          'CPU scheduling',
          'Process synchronisation',
          'File systems and operating system architecture',
        ],
      ),
      CurriculumSection(
        title: 'Computer Networks',
        subjects: [
          'Networking fundamentals',
          'TCP/IP and internet protocols',
          'Routing and switching',
          'Network security',
        ],
      ),
      CurriculumSection(
        title: 'Web Technology',
        subjects: [
          'HTML and CSS',
          'JavaScript',
          'Responsive web design',
          'Basic web application development',
        ],
      ),
      CurriculumSection(
        title: 'Software Engineering',
        subjects: [
          'Software development life cycle',
          'Software testing',
          'Project management',
          'Software design and development',
        ],
      ),
      CurriculumSection(
        title: 'Artificial Intelligence',
        subjects: [
          'Machine learning fundamentals',
          'Intelligent systems',
          'Search algorithms',
          'AI applications',
        ],
      ),
      CurriculumSection(
        title: 'Cloud Computing',
        subjects: [
          'Cloud services and virtualisation',
          'Cloud storage',
          'Cloud deployment models',
          'Cloud security',
        ],
      ),
      CurriculumSection(
        title: 'Cyber Security',
        subjects: [
          'Cyber security fundamentals',
          'Encryption and authentication',
          'Ethical hacking basics',
          'Network security',
        ],
      ),
      CurriculumSection(
        title: 'Computer Lab & Project',
        subjects: [
          'Hands-on practical sessions',
          'Mini projects',
          'Software development projects',
          'Seminar presentations',
        ],
      ),
    ],

    practicalOpportunities: [
      'Programming exercises and laboratory sessions',
      'Database design and SQL practice',
      'Web development projects',
      'Networking and cyber security exercises',
      'Software development projects',
      'Practical work involving AI and cloud computing',
    ],

    careerOpportunities: [
      'Software Developer',
      'Python Developer',
      'Java Developer',
      'Web Developer',
      'Database Administrator',
      'System Administrator',
      'Network Engineer',
      'Cyber Security Analyst',
      'Cloud Support Engineer',
      'IT Support Executive',
      'Data Analyst',
      'QA Tester',
    ],

    higherEducation: [
      'MSc Computer Science',
      'Master of Computer Applications (MCA)',
      'Master of Business Administration (MBA)',
      'Artificial Intelligence',
      'Data Science',
      'Cyber Security',
      'Cloud Computing',
      'Other specialised postgraduate programmes',
    ],

    admissionInfo:
        'Contact MIC Arts & Science College to confirm current admission requirements, eligibility, application dates, and available seats.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'bttm',
    name: 'BTTM',
    shortName: 'BTTM',
    description:
        'Travel and tourism education covering travel management, hospitality, tour operations, and destination management.',
    icon: Icons.travel_explore_outlined,

    overview:
        'Bachelor of Travel and Tourism Management (BTTM) is an undergraduate programme designed to provide students with comprehensive knowledge and practical skills in tourism, travel, hospitality, tour operations, destination management, airline ticketing, tourism marketing, and event management. The programme prepares students for careers in the tourism and hospitality industry in India and abroad.',

    duration: 'Confirm with the college',
    eligibility: 'Confirm the current eligibility criteria with the college',

    curriculum: [
      CurriculumSection(
        title: 'Tourism Management',
        subjects: [
          'Fundamentals of tourism',
          'Tourism systems and planning',
          'Destinations and tourism products',
          'Role of tourism in economic development',
        ],
      ),
      CurriculumSection(
        title: 'Travel Management',
        subjects: [
          'Travel planning and itinerary preparation',
          'Travel operations',
          'Customer service',
          'Travel documentation and travel agency management',
        ],
      ),
      CurriculumSection(
        title: 'Tourism Geography',
        subjects: [
          'Important tourist destinations',
          'Geographical attractions and tourism regions',
          'Climate and landscapes',
          'Geographical factors influencing tourism',
        ],
      ),
      CurriculumSection(
        title: 'Travel Agency Management',
        subjects: [
          'Travel agency operations',
          'Ticketing and reservations',
          'Tour packages and customer handling',
          'Travel documentation and agency operations',
        ],
      ),
      CurriculumSection(
        title: 'Tour Operation',
        subjects: [
          'Tour planning and package development',
          'Tour costing',
          'Itinerary preparation',
          'Transportation, accommodation, and tour coordination',
        ],
      ),
      CurriculumSection(
        title: 'Airline Ticketing',
        subjects: [
          'Airline reservations',
          'Ticketing procedures',
          'Fare calculation',
          'Passenger handling and airline terminology',
        ],
      ),
      CurriculumSection(
        title: 'Hospitality Management',
        subjects: [
          'Hotel operations',
          'Front office management',
          'Housekeeping',
          'Food and beverage services',
          'Guest relations',
        ],
      ),
      CurriculumSection(
        title: 'Event Management',
        subjects: [
          'Event planning and budgeting',
          'Venue management and logistics',
          'Event marketing',
          'Guest management and event execution',
        ],
      ),
      CurriculumSection(
        title: 'Tourism Marketing',
        subjects: [
          'Tourism marketing strategies',
          'Destination promotion',
          'Digital marketing',
          'Customer behaviour and branding',
          'Tourism product promotion',
        ],
      ),
      CurriculumSection(
        title: 'Travel Documentation',
        subjects: [
          'Passports and visas',
          'Travel insurance and permits',
          'Immigration procedures',
          'International travel documents',
          'Related travel requirements',
        ],
      ),
      CurriculumSection(
        title: 'Sustainable Tourism',
        subjects: [
          'Responsible tourism practices',
          'Environmental protection',
          'Community participation',
          'Cultural preservation',
        ],
      ),
      CurriculumSection(
        title: 'Digital Tourism',
        subjects: [
          'Online booking platforms',
          'Social media and travel websites',
          'Digital marketing',
          'Tourism applications',
        ],
      ),
      CurriculumSection(
        title: 'Tourism Project & Practical Training',
        subjects: [
          'Tourism projects and field visits',
          'Industry interaction',
          'Seminars and presentations',
          'Practical training',
        ],
      ),
    ],

    practicalOpportunities: [
      'Tourism projects and field visits',
      'Travel itinerary and tour package preparation',
      'Travel agency and reservation exercises',
      'Airline ticketing and fare calculation practice',
      'Hospitality and guest service activities',
      'Tourism marketing and event planning',
      'Industry interaction and practical training',
    ],

    careerOpportunities: [
      'Travel Consultant',
      'Tour Operator',
      'Travel Executive',
      'Reservation Executive',
      'Airline Ticketing Executive',
      'Tourism Officer',
      'Tour Coordinator',
      'Travel Agent',
      'Destination Manager',
      'Guest Relations Executive',
      'Front Office Executive',
      'Event Coordinator',
      'Hotel and Resort Operations Executive',
      'Hospitality Executive',
      'Tourism Marketing Executive',
    ],

    higherEducation: [
      'Tourism Management',
      'Travel Management',
      'Hospitality Management',
      'Master of Business Administration (MBA)',
      'Event Management',
      'International Tourism',
      'Other related specialised postgraduate programmes',
    ],

    admissionInfo:
        'Contact MIC Arts & Science College to confirm current admission requirements, eligibility, application dates, and available seats.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'ba-economics',
    name: 'BA Economics',
    shortName: 'BA Economics',
    description:
        'Economics, business and economic analysis.',
    icon: Icons.attach_money,

    overview:
        'BA Economics is an undergraduate program that provides a comprehensive understanding of economic principles, theories, policies, markets, and economic development. The course develops analytical, quantitative, research, and problem-solving skills required to understand economic issues and make informed decisions. Students gain knowledge in microeconomics, macroeconomics, statistics, Indian economy, international economics, public economics, development economics, banking, finance, and modern economic analysis.',

    duration: 'Confirm with the college',
    eligibility:
        'Confirm the current eligibility criteria with the college',

    curriculum: [
      CurriculumSection(
        title: 'Microeconomics',
        subjects: [
          'Basic principles of microeconomics',
          'Demand and supply',
          'Consumer behaviour',
          'Production, cost, and revenue',
          'Market structures',
        ],
      ),
      CurriculumSection(
        title: 'Macroeconomics',
        subjects: [
          'National income and employment',
          'Inflation and economic growth',
          'Business cycles',
          'Monetary policy and fiscal policy',
          'Macroeconomic concepts',
        ],
      ),
      CurriculumSection(
        title: 'Mathematical Economics',
        subjects: [
          'Mathematical techniques used in economics',
          'Equations and functions',
          'Graphs and optimisation',
          'Mathematical methods for economic analysis',
        ],
      ),
      CurriculumSection(
        title: 'Statistics for Economics',
        subjects: [
          'Statistical methods for economic analysis',
          'Averages and dispersion',
          'Correlation and regression',
          'Probability',
          'Interpretation of data',
        ],
      ),
      CurriculumSection(
        title: 'Indian Economy',
        subjects: [
          'Structure and features of the Indian economy',
          'Agriculture, industry, and services',
          'Employment and poverty',
          'Inflation and economic development',
        ],
      ),
      CurriculumSection(
        title: 'International Economics',
        subjects: [
          'International trade',
          'Balance of payments',
          'Exchange rates',
          'Trade policies and globalisation',
          'International economic relations',
        ],
      ),
      CurriculumSection(
        title: 'Public Economics',
        subjects: [
          'Government revenue and taxation',
          'Public expenditure',
          'Public finance',
          'Government economic policies',
        ],
      ),
      CurriculumSection(
        title: 'Development Economics',
        subjects: [
          'Economic development',
          'Poverty and inequality',
          'Human development',
          'Unemployment and population',
          'Sustainable development and development policies',
        ],
      ),
      CurriculumSection(
        title: 'Environmental Economics',
        subjects: [
          'Economic activities and the environment',
          'Pollution and natural resources',
          'Climate change',
          'Environmental policies',
          'Sustainable development',
        ],
      ),
      CurriculumSection(
        title: 'Banking and Financial Economics',
        subjects: [
          'Fundamentals of banking',
          'Financial institutions and money markets',
          'Credit and interest rates',
          'Monetary systems',
          'Financial services',
        ],
      ),
      CurriculumSection(
        title: 'Econometrics',
        subjects: [
          'Statistical and mathematical methods in economics',
          'Economic data estimation',
          'Forecasting',
          'Hypothesis testing',
          'Economic decision-making',
        ],
      ),
      CurriculumSection(
        title: 'Research Methodology',
        subjects: [
          'Research design',
          'Data collection and sampling',
          'Data analysis and interpretation',
          'Report writing',
          'Presentation of research findings',
        ],
      ),
      CurriculumSection(
        title: 'Computer Applications in Economics',
        subjects: [
          'Computer applications in economic analysis',
          'Spreadsheet tools',
          'Data analysis tools',
          'Digital presentations',
          'Technology for economic research',
        ],
      ),
    ],

    practicalOpportunities: [
      'Economic data collection and analysis',
      'Statistical calculations and interpretation',
      'Spreadsheet-based economic analysis',
      'Research projects and report preparation',
      'Market and economic research activities',
      'Presentations based on economic issues',
    ],

    careerOpportunities: [
      'Economist',
      'Economic Analyst',
      'Research Assistant',
      'Business Analyst',
      'Data Analyst',
      'Financial Analyst',
      'Market Research Analyst',
      'Banking Executive',
      'Investment Assistant',
      'Credit Analyst',
      'Business Development Executive',
      'Research Associate',
    ],

    higherEducation: [
      'MA Economics',
      'MCom',
      'MBA',
      'MSc Economics',
      'Finance-related programmes',
      'Data Analytics',
      'Public Policy',
      'Other specialised higher education programmes',
    ],

    admissionInfo:
        'Contact MIC Arts & Science College to confirm current admission requirements, eligibility, application dates, and available seats.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
  Course(
    id: 'ba-english',
    name: 'BA English',
    shortName: 'BA English',
    description:
        'English language and literature.',
    icon: Icons.menu_book_outlined,

    overview:
        'BA English is an undergraduate program designed to develop a strong understanding of English language, literature, communication, and critical thinking. The course introduces students to poetry, drama, fiction, literary criticism, literary theory, Indian writing in English, creative writing, and professional communication. It develops language proficiency, analytical abilities, creativity, research skills, and communication skills required for academic and professional careers.',

    duration: 'Confirm with the college',
    eligibility:
        'Confirm the current eligibility criteria with the college',

    curriculum: [
      CurriculumSection(
        title: 'English Literature',
        subjects: [
          'Major literary works and authors',
          'Literary genres and movements',
          'Important developments in English literature',
        ],
      ),
      CurriculumSection(
        title: 'British Literature',
        subjects: [
          'Important British writers',
          'Literary periods',
          'Poetry, drama, and fiction',
          'Major literary movements',
        ],
      ),
      CurriculumSection(
        title: 'American Literature',
        subjects: [
          'Major American writers and literary works',
          'Literary themes and movements',
          'American poetry',
          'Fiction and drama',
        ],
      ),
      CurriculumSection(
        title: 'Indian Writing in English',
        subjects: [
          'Works of Indian authors writing in English',
          'Cultural contexts and literary themes',
          'Indian English poetry and fiction',
          'Developments in Indian English literature',
        ],
      ),
      CurriculumSection(
        title: 'English Poetry',
        subjects: [
          'Major poets and poetic forms',
          'Literary devices',
          'Poetic themes and styles',
          'Techniques used in English poetry',
        ],
      ),
      CurriculumSection(
        title: 'English Drama',
        subjects: [
          'Development of English drama',
          'Major playwrights and plays',
          'Dramatic techniques',
          'Characters and themes',
        ],
      ),
      CurriculumSection(
        title: 'English Fiction',
        subjects: [
          'Novels and short stories',
          'Narrative techniques',
          'Characterisation and themes',
          'Plot structures and literary styles',
        ],
      ),
      CurriculumSection(
        title: 'Literary Criticism',
        subjects: [
          'Basic principles of literary criticism',
          'Different approaches to literary analysis',
          'Interpretation of literary works',
          'Critical reading and analysis',
        ],
      ),
      CurriculumSection(
        title: 'Literary Theory',
        subjects: [
          'Structuralism',
          'Post-structuralism',
          'Feminism',
          'Marxism',
          'Postcolonial studies',
        ],
      ),
      CurriculumSection(
        title: 'Communication Skills',
        subjects: [
          'Speaking and listening',
          'Reading and writing',
          'Academic communication',
          'Professional communication',
        ],
      ),
      CurriculumSection(
        title: 'Professional English',
        subjects: [
          'Professional writing',
          'Presentations and interviews',
          'Business correspondence',
          'Group discussions',
          'Workplace communication',
        ],
      ),
      CurriculumSection(
        title: 'Creative Writing',
        subjects: [
          'Poetry and short stories',
          'Essay writing',
          'Descriptive writing',
          'Storytelling',
          'Creative expression',
        ],
      ),
      CurriculumSection(
        title: 'Research Methodology',
        subjects: [
          'Fundamentals of academic research',
          'Research methods',
          'Data collection and analysis',
          'Referencing and documentation',
          'Project preparation',
        ],
      ),
    ],

    practicalOpportunities: [
      'Creative writing exercises',
      'Literary analysis and presentations',
      'Public speaking and communication activities',
      'Essay and report writing',
      'Research projects and documentation',
      'Content creation and editing exercises',
      'Group discussions and seminar presentations',
    ],

    careerOpportunities: [
      'English Teacher',
      'Content Writer',
      'Copywriter',
      'Editor',
      'Proofreader',
      'Journalist',
      'Technical Writer',
      'Communication Executive',
      'Customer Relationship Executive',
      'Public Relations Executive',
      'Digital Content Executive',
      'Administrative Executive',
    ],

    higherEducation: [
      'MA English',
      'MA Journalism',
      'MA Communication',
      'MBA',
      'B.Ed',
      'Postgraduate diplomas',
      'Competitive examinations',
      'Research programmes',
      'Other specialised higher education programmes',
    ],

    admissionInfo:
        'Contact MIC Arts & Science College to confirm current admission requirements, eligibility, application dates, and available seats.',

    fees:
        'Contact MIC Arts & Science College for the current official fee structure.',
  ),
];