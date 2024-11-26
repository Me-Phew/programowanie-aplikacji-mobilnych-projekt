import 'faculties.dart';
import 'schedules.dart';

class CoursesOfStudy {
  int id;
  String fieldOfStudy;
  Faculty faculty;
  Schedule schedule;
  String courseType;
  String levelOfStudy;
  String obtainedTitle;
  int numberOfSemesters;
  int currentSemester;
  DateTime startDate;
  DateTime endDate;
  DateTime updatedAt;
  DateTime createdAt;

  CoursesOfStudy({
    required this.id,
    required this.fieldOfStudy,
    required this.faculty,
    required this.schedule,
    required this.courseType,
    required this.levelOfStudy,
    required this.obtainedTitle,
    required this.numberOfSemesters,
    required this.currentSemester,
    required this.startDate,
    required this.endDate,
    required this.updatedAt,
    required this.createdAt,
  });
}
