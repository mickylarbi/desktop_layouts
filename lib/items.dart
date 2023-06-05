List<String> assessment = [
  'Aligning Assessment, Teaching and Outcomes',
  'Assessment: Principles of Assessment, Constructing Multiple Choice Items, Constructing Essay Items and Scoring Rubric',
  'Assessment Criteria and Learning Outcomes',
  'Best Practices in Assessment in Higher Education',
  'Guidelines for Continuous and Summative Assessments',
  'Using Learning Management System for Assessment'
];

List teaching = [
  'Inclusive Education',
  'Methods of Lesson Delivery',
  'Innovative Teaching Methods',
  'Contemporary Methods of Lesson Delivery',
  const MapEntry(
    'Contemporary methods of lesson delivery in the tertiary education level',
    [
      'Case study writing',
      'Problem-based teaching',
      'Inclusive teaching approaches',
      'Development of teaching philosophy',
      'Pedagogical skills for entrepreneurial university'
    ],
  ),
  'Teaching Methods to Facilitate Learning',
  'Reflective Teaching in Higher Education',
  'Improving Teaching and Learning Together\n\nTeaching university students',
  'Improving teaching methodologies:\nAndragogical Approaches and Strategies with ICT',
  const MapEntry(
    'Online (virtual) teaching methods',
    ['Web conferencing tools or Apps for teaching'],
  ),
  'Pre-lesson Delivery and Delivery Tasks of the Lecturer',
  'Active Engagement Strategies with Students'
];

List<String> curriculum = [
  'Understanding the Higher Education Learner (Andragogy)',
  'Development of Teaching Philosophy',
  'Exploring Key Themes in Academic Practice',
  'Curriculum Development, Implementation and Education',
  'Programme Development\nDeveloping New Academic Programmes'
];

List<String> technologyInTeaching = [
  'Presentation Application as a Productive Tool',
  'Use of Audience Response System in teaching',
  'Integrating ICT in teaching - What is TPACK?',
  'Using various LMS tools',
  'Use of other (apart from zoom and google meet) platforms to teach online',
  'Course Design, Management and Technology',
  'Open and Distance Learning Methodologies in Higher Education',
  'Using Course Outline to Solicit Critical Thinking'
];

List others = [
  'Effective Project Work and Thesis Supervision',
  const MapEntry(
    'Research and Publications',
    [
      'Proposal writing',
      'Academic writing',
      'Grantsmanship',
      'Using software for referencing',
      'Publication of articles',
      'Using of website ot enhance academics visibility',
      'Project management Data Science'
    ],
  ),
  'Progressing in the academic profession',
  'The practical aspect of Counselling',
  'Project management\nUse of Microsoft Project Management Software',
  const MapEntry(
    'Use of quantitative data analysis software',
    [
      'Qualitative analysis: Use of NVivo software for qualitative analysis',
      'SEM analysis (SEM PLS software)'
    ],
  ),
  'Data Security',
  const MapEntry(
    'Statistics for research',
    [
      'Technical training on Python and R to support research in Economics',
      'Laboratory Information Management Systems (LIMS) for analytical laboratories course'
    ],
  ),
  'The Forgetting Curve and its Implication for Teaching',
  'Fallacies and its Implication for Teaching'
];

Map<String, List> items = {
  'Assessment': assessment,
  'Teaching': teaching,
  'Curriculum': curriculum,
  'Technology in teaching': technologyInTeaching,
  'Others': others
};
