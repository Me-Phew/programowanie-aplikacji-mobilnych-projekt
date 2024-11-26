class Lecture {
  String id;
  String name;
  int lecturer;
  String form;
  DateTime startTime;
  int numberOfHours;
  dynamic classroom;
  bool isOnline;
  DateTime endTime;

  Lecture({
    required this.id,
    required this.name,
    required this.lecturer,
    required this.form,
    required this.startTime,
    required this.numberOfHours,
    required this.classroom,
    required this.isOnline,
    required this.endTime,
  });
}

class WeekFullTimeSchedule {
  List<Lecture> monday;
  List<Lecture> tuesday;
  List<Lecture> wednesday;
  List<Lecture> thursday;
  List<Lecture> friday;

  WeekFullTimeSchedule({
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
  });
}

class WeekPartTimeSchedule {
  List<Lecture> saturday;
  List<Lecture> sunday;

  WeekPartTimeSchedule({
    required this.saturday,
    required this.sunday,
  });
}

class Schedule {
  int id;
  int courseOfStudy;
  WeekFullTimeSchedule weekAfullTimeSchedule;
  WeekPartTimeSchedule weekAPartTimeSchedule;
  WeekFullTimeSchedule weekBfullTimeSchedule;
  WeekPartTimeSchedule weekBPartTimeSchedule;
  DateTime updatedAt;
  DateTime createdAt;

  Schedule({
    required this.id,
    required this.courseOfStudy,
    required this.weekAfullTimeSchedule,
    required this.weekAPartTimeSchedule,
    required this.weekBfullTimeSchedule,
    required this.weekBPartTimeSchedule,
    required this.updatedAt,
    required this.createdAt,
  });
}
