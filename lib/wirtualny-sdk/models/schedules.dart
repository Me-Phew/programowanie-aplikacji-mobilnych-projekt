import 'dart:convert';

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

  factory Lecture.fromRawJson(String str) => Lecture.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Lecture.fromJson(Map<String, dynamic> json) => Lecture(
        id: json["id"],
        name: json["name"],
        lecturer: json["lecturer"],
        form: json["form"],
        startTime: DateTime.parse(json["startTime"]),
        numberOfHours: json["numberOfHours"],
        classroom: json["classroom"],
        isOnline: json["isOnline"],
        endTime: DateTime.parse(json["endTime"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lecturer": lecturer,
        "form": form,
        "startTime": startTime.toIso8601String(),
        "numberOfHours": numberOfHours,
        "classroom": classroom,
        "isOnline": isOnline,
        "endTime": endTime.toIso8601String(),
      };
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

  factory WeekFullTimeSchedule.fromRawJson(String str) =>
      WeekFullTimeSchedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeekFullTimeSchedule.fromJson(Map<String, dynamic> json) =>
      WeekFullTimeSchedule(
        monday:
            List<Lecture>.from(json["monday"].map((x) => Lecture.fromJson(x))),
        tuesday: List<Lecture>.from(json["tuesday"].map((x) => x)),
        wednesday: List<Lecture>.from(json["wednesday"].map((x) => x)),
        thursday: List<Lecture>.from(json["thursday"].map((x) => x)),
        friday: List<Lecture>.from(json["friday"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "monday": List<dynamic>.from(monday.map((x) => x.toJson())),
        "tuesday": List<dynamic>.from(tuesday.map((x) => x)),
        "wednesday": List<dynamic>.from(wednesday.map((x) => x)),
        "thursday": List<dynamic>.from(thursday.map((x) => x)),
        "friday": List<dynamic>.from(friday.map((x) => x)),
      };
}

class WeekPartTimeSchedule {
  List<Lecture> saturday;
  List<Lecture> sunday;

  WeekPartTimeSchedule({
    required this.saturday,
    required this.sunday,
  });

  factory WeekPartTimeSchedule.fromRawJson(String str) =>
      WeekPartTimeSchedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeekPartTimeSchedule.fromJson(Map<String, dynamic> json) =>
      WeekPartTimeSchedule(
        saturday: List<Lecture>.from(json["saturday"].map((x) => x)),
        sunday: List<Lecture>.from(json["sunday"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "saturday": List<dynamic>.from(saturday.map((x) => x)),
        "sunday": List<dynamic>.from(sunday.map((x) => x)),
      };
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

  factory Schedule.fromRawJson(String str) =>
      Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        courseOfStudy: json["courseOfStudy"],
        weekAfullTimeSchedule:
            WeekFullTimeSchedule.fromJson(json["weekAfullTimeSchedule"]),
        weekAPartTimeSchedule:
            WeekPartTimeSchedule.fromJson(json["weekAPartTimeSchedule"]),
        weekBfullTimeSchedule:
            WeekFullTimeSchedule.fromJson(json["weekBfullTimeSchedule"]),
        weekBPartTimeSchedule:
            WeekPartTimeSchedule.fromJson(json["weekBPartTimeSchedule"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "courseOfStudy": courseOfStudy,
        "weekAfullTimeSchedule": weekAfullTimeSchedule.toJson(),
        "weekAPartTimeSchedule": weekAPartTimeSchedule.toJson(),
        "weekBfullTimeSchedule": weekBfullTimeSchedule.toJson(),
        "weekBPartTimeSchedule": weekBPartTimeSchedule.toJson(),
        "updatedAt": updatedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
      };
}
