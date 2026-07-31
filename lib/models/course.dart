class Course {
  final String code;
  final String title;
  final String coordinator;
  final String overview;

  const Course({
    required this.code,
    required this.title,
    required this.coordinator,
    required this.overview,
  });
}

const papl = Course(
    code: 'M30235 - PAPL',
    title: 'Programming Applications and Programming Languages (2025/26)',
    coordinator: 'Dr Jiacheng Tan',
    overview:
        'The first part of the module builds upon students existing programming and database knowledge, guiding them in constructing complex, interactive, cross-platform applications.');

const maths = Course(
  code: 'M21274 - MATHFUN',
  title: 'Discrete Mathematics And Functional Programming',
  coordinator: 'Dr Janka Chlebikova',
  overview:
      'This module covers mathematical concepts relevant to software engineering and computer science, and introduces the student to the practice of functional programming and its underlying mathematical foundations.',
);
