import 'common.dart';

class Faculty {
  int id;
  String name;
  int university;
  List<int> classrooms;
  List<int> coursesOfStudy;
  Address address;
  Contact contact;
  DateTime updatedAt;
  DateTime createdAt;

  Faculty({
    required this.id,
    required this.name,
    required this.university,
    required this.classrooms,
    required this.coursesOfStudy,
    required this.address,
    required this.contact,
    required this.updatedAt,
    required this.createdAt,
  });
}
