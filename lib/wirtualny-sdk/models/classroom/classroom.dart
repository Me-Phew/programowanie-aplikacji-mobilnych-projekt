import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class Classroom with _$Classroom {
  const factory Classroom({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "faculty") required dynamic faculty,
    @JsonKey(name: "floorNumber") required int floorNumber,
    @JsonKey(name: "roomNumber") required int roomNumber,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "createdAt") required DateTime createdAt,
  }) = _Classroom;

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);
}
