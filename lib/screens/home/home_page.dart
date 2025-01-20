/// @file home_page.dart
/// @brief Ekran główny wyświetlający plan zajęć studenta.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/utils/common.dart';
import 'package:flutter_application/wirtualny-sdk/models/lecture/lecture.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';

class HomePage extends StatefulWidget {
  Student student;

  /// @brief Konstruktor widgetu HomePage.
  /// @param student Student, którego plan zajęć będzie wyświetlany.
  HomePage({super.key, required this.student});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();
  DateTime? selectedDay;
  List<Lecture>? selectedDaySchedule;
  DateTime? _lastUpdate = DateTime.now();

  @override
  void initState() {
    super.initState();
    selectedDay = DateTime.utc(today.year, today.month, today.day);

    switch (selectedDay!.weekday) {
      case 1:
        selectedDaySchedule = widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.monday;
        break;
      case 2:
        selectedDaySchedule = widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.tuesday;
        break;
      case 3:
        selectedDaySchedule = widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.wednesday;
        break;
      case 4:
        selectedDaySchedule = widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.thursday;
        break;
      case 5:
        selectedDaySchedule = widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.friday;
        break;
      default:
        selectedDaySchedule = [];
        break;
    }
  }

  /// @brief Obsługuje wybór dnia w kalendarzu.
  /// @param selectedDay Wybrany dzień.
  /// @param focusedDay Aktualnie skupiony dzień.
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;

      switch (selectedDay.weekday) {
        case 1:
          selectedDaySchedule = widget
              .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.monday;
          break;
        case 2:
          selectedDaySchedule = widget
              .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.tuesday;
          break;
        case 3:
          selectedDaySchedule = widget.student.coursesOfStudy[0].schedule
              .weekAfullTimeSchedule.wednesday;
          break;
        case 4:
          selectedDaySchedule = widget.student.coursesOfStudy[0].schedule
              .weekAfullTimeSchedule.thursday;
          break;
        case 5:
          selectedDaySchedule = widget
              .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.friday;
          break;
        default:
          selectedDaySchedule = [];
      }
    });
  }

  /// @brief Pobiera plan zajęć na określony dzień tygodnia.
  /// @param weekday Dzień tygodnia.
  /// @return Lista fów zaplanowanych na dany dzień.
  List<Lecture> _getDaySchedule(int weekday) {
    switch (weekday) {
      case DateTime.monday:
        return widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.monday;
      case DateTime.tuesday:
        return widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.tuesday;
      case DateTime.wednesday:
        return widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.wednesday;
      case DateTime.thursday:
        return widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.thursday;
      case DateTime.friday:
        return widget
            .student.coursesOfStudy[0].schedule.weekAfullTimeSchedule.friday;
      default:
        return [];
    }
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    final fetchStudentResult = await WirtualnySdk.instance.auth
        .fetchStudent(WirtualnySdk.instance.auth.accessToken!);

    fetchStudentResult.fold(
      (l) {
        _refreshController.refreshFailed();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Nie udało się odświeżyć'),
            backgroundColor: Colors.red,
          ),
        );
      },
      (r) {
        setState(() {
          widget.student = r;
          _lastUpdate = DateTime.now();
        });

        _refreshController.refreshCompleted();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Do obsługi błedów, przekazywania danych jako lista itp

    return Scaffold(
        body: SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: const MaterialClassicHeader(
        color: Colors.white,
        backgroundColor: Colors.black,
        distance: 82,
        height: 100,
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.schedule,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  _lastUpdate != null
                      ? "Aktualizacja: ${getFormattedDateTime(_lastUpdate!)}"
                      : "",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
            TableCalendar(
              // locale: ref.watch(localeProvider).languageCode == 'en'
              //     ? 'en_US'
              //     : 'pl_PL',
              locale: 'pl_PL',
              rowHeight: 43,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, selectedDay),
              focusedDay: today,
              firstDay: DateTime.utc(2021, 10, 10),
              lastDay: DateTime.utc(2030, 10, 10),

              // Stylowanie Kalendarza
              onDaySelected: _onDaySelected,
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.white,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.teal.shade800,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),

              // Kropki Pod datami
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, date, focusedDay) {
                  final bool isSelectedDay = isSameDay(date, selectedDay);
                  final lectures = _getDaySchedule(date.weekday);
                  final lectureCount = lectures.length;

                  return Stack(
                    children: [
                      Center(
                        child: Text(
                          '${date.day}',
                          style: TextStyle(
                              color:
                                  isSelectedDay ? Colors.white : Colors.black),
                        ),
                      ),
                      if (lectureCount > 0)
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              lectureCount,
                              (index) => Container(
                                width: 6,
                                height: 6,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 1.5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            // Karta wyświetlająca szczegóły dnia
            if (selectedDaySchedule!.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: selectedDaySchedule!.length,
                  itemBuilder: (context, index) {
                    final lecture = selectedDaySchedule![index];

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      color: Colors.grey[50],
                      child: ListTile(
                        title: Text(
                          lecture.name,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.black),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${lecture.startTime.hour}:${lecture.startTime.minute.toString().padLeft(2, '0')} - ${lecture.endTime.hour}:${lecture.endTime.minute.toString().padLeft(2, '0')}',
                                      style: GoogleFonts.poppins(
                                        textStyle:
                                            TextStyle(color: Colors.grey[900]),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey[900],
                                        ),
                                        children: [
                                          TextSpan(
                                            text: AppLocalizations.of(context)!
                                                .room,
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: lecture.classroom.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.poppins(
                                          color: Colors.grey[900],
                                        ),
                                        children: [
                                          TextSpan(
                                            text: getLectureFormDisplayName(
                                                'pl', lecture.form),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style:
                                            TextStyle(color: Colors.grey[900]),
                                        children: [
                                          TextSpan(
                                            text: lecture.lecturer.title,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            if (selectedDaySchedule!.isEmpty)
              const Expanded(
                  child: Center(child: Text("Brak zajęć w tym dniu"))),
          ],
        ),
      ),
    ));
  }
}
