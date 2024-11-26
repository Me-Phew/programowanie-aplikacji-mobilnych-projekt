import 'courses_of_study.dart';

class Student {
  int id;
  String firstName;
  dynamic middleName;
  String familyName;
  List<CoursesOfStudy> coursesOfStudy;
  DateTime dateOfBirth;
  DateTime updatedAt;
  DateTime createdAt;
  String collection;
  int loginAttempts;

  Student({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.familyName,
    required this.coursesOfStudy,
    required this.dateOfBirth,
    required this.updatedAt,
    required this.createdAt,
    required this.collection,
    required this.loginAttempts,
  });
}
