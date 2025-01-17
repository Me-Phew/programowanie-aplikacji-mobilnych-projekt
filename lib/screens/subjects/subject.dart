class Subject {
  final String name;
  final String lecturer;
  final List<Grade> grades;
  final List<Exam> upcomingExams;
  final double averageGrade;
  final String type;  // Changed from 'form' to 'type'

  Subject({
    required this.name,
    required this.lecturer,
    required this.grades,
    required this.upcomingExams,
    required this.averageGrade,
    required this.type,  // Changed from 'form' to 'type'
  });
}

class Grade {
  final double value;
  final String type;
  final DateTime date;
  final String description;

  Grade({
    required this.value,
    required this.type,
    required this.date,
    required this.description,
  });
}

class Exam {
  final String title;
  final DateTime date;
  final String description;
  final String location;

  Exam({
    required this.title,
    required this.date,
    required this.description,
    required this.location,
  });
}

