import 'package:flutter/material.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/home/events.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  DateTime today = DateTime.now();
  DateTime? selectedDay;

  @override
  void initState() {
    super.initState();
    selectedDay = DateTime.utc(today.year, today.month, today.day);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox();

    // Nasłuchiwanie zmian w bazie danych
    // final eventsAsyncValue = ref.watch(eventsProvider);

    // Do obsługi błedów, przekazywania danych jako lista itp
    // return eventsAsyncValue.when(
    //     loading: () => Center(child: CircularProgressIndicator()),
    //     error: (error, stack) => Center(child: Text('Error: $error')),
    //     data: (events) {
    // final selectedEvents =
    //     events.where((event) => isSameDay(event.date, selectedDay)).toList();

    // Sortuje zajęcia pobrane z bazy danych
    // selectedEvents.sort((a, b) {
    //   final aStart = DateTime(today.year, today.month, today.day,
    //       a.startTime.hour, a.startTime.minute);
    //   final bStart = DateTime(today.year, today.month, today.day,
    //       b.startTime.hour, b.startTime.minute);
    //   return aStart.compareTo(bStart);
    // });

    // return Scaffold(
    //     body: Padding(
    //   padding: const EdgeInsets.all(32.0),
    //   child: Column(
    //     children: [
    //       const SizedBox(height: 30),
    //       Text(
    //         AppLocalizations.of(context)!.schedule,
    //         style: GoogleFonts.poppins(
    //           textStyle: TextStyle(
    //             fontSize: 28,
    //             fontWeight: FontWeight.bold,
    //             color: Colors.black,
    //           ),
    //         ),
    //       ),
    //       TableCalendar(
    //         locale: ref.watch(localeProvider).languageCode == 'en'
    //             ? 'en_US'
    //             : 'pl_PL',
    //         rowHeight: 43,
    //         headerStyle:
    //             HeaderStyle(formatButtonVisible: false, titleCentered: true),
    //         availableGestures: AvailableGestures.all,
    //         selectedDayPredicate: (day) => isSameDay(day, selectedDay),
    //         focusedDay: today,
    //         firstDay: DateTime.utc(2021, 10, 10),
    //         lastDay: DateTime.utc(2030, 10, 10),

    //         // Stylowanie Kalendarza
    //         onDaySelected: _onDaySelected,
    //         calendarStyle: CalendarStyle(
    //           todayDecoration: BoxDecoration(
    //             color: Colors.grey[900],
    //             shape: BoxShape.circle,
    //           ),
    //           todayTextStyle: TextStyle(
    //             color: Colors.white,
    //           ),
    //           selectedDecoration: BoxDecoration(
    //             color: Colors.black,
    //             shape: BoxShape.circle,
    //           ),
    //           selectedTextStyle: TextStyle(
    //             color: Colors.white,
    //           ),
    //         ),

    //         // Kropki Pod datami
    //         calendarBuilders: CalendarBuilders(
    //           defaultBuilder: (context, date, focusedDay) {
    //             // final eventCount =
    //             //     events.where((event) => isSameDay(event.date, date)).length;
    //               return Stack(
    //                 children: [
    //                   Center(
    //                     child: Text(
    //                       '${date.day}',
    //                       style: TextStyle(
    //                         color: isSameDay(date, selectedDay)
    //                             ? Colors.white
    //                             : Colors.black,
    //                       ),
    //                     ),
    //                   ),
    //                   if (eventCount > 0)
    //                     Positioned(
    //                       top: 30,
    //                       left: 0,
    //                       right: 0,
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: List.generate(
    //                             eventCount,
    //                             (index) => Container(
    //                                   width: 6,
    //                                   height: 6,
    //                                   margin: const EdgeInsets.symmetric(
    //                                       horizontal: 1.5),
    //                                   decoration: BoxDecoration(
    //                                     shape: BoxShape.circle,
    //                                     color: Colors.black,
    //                                   ),
    //                                 )),
    //                       ),
    //                     ),
    //                 ],
    //               );
    //             },
    //           ),
    //         ),

    //         const SizedBox(height: 20),
    //         // Karta wyświetlająca szczegóły dnia
    //         Expanded(
    //           child: ListView.builder(
    //             itemCount: selectedEvents.length,
    //             itemBuilder: (context, index) {
    //               final event = selectedEvents[index];
    //               return Card(
    //                 margin: const EdgeInsets.symmetric(vertical: 8),
    //                 color: Colors.grey[50],
    //                 child: ListTile(
    //                   title: Text(
    //                     event.title,
    //                     style: GoogleFonts.poppins(
    //                       textStyle: TextStyle(color: Colors.black),
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                   subtitle: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         children: [
    //                           Column(
    //                             crossAxisAlignment: CrossAxisAlignment.start,
    //                             children: [
    //                               Text(
    //                                 '${event.startTime.hour}:${event.startTime.minute.toString().padLeft(2, '0')} - ${event.endTime.hour}:${event.endTime.minute.toString().padLeft(2, '0')}',
    //                                 style: GoogleFonts.poppins(
    //                                   textStyle:
    //                                       TextStyle(color: Colors.grey[900]),
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                               RichText(
    //                                 text: TextSpan(
    //                                   style: GoogleFonts.poppins(
    //                                     color: Colors.grey[900],
    //                                   ),
    //                                   children: [
    //                                     TextSpan(
    //                                       text:
    //                                           AppLocalizations.of(context)!.room,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.normal,
    //                                       ),
    //                                     ),
    //                                     TextSpan(
    //                                       text: event.room,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.bold,
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                           Column(
    //                             crossAxisAlignment: CrossAxisAlignment.end,
    //                             children: [
    //                               RichText(
    //                                 text: TextSpan(
    //                                   style: GoogleFonts.poppins(
    //                                     color: Colors.grey[900],
    //                                   ),
    //                                   children: [
    //                                     TextSpan(
    //                                       text:
    //                                           AppLocalizations.of(context)!.type,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.normal,
    //                                       ),
    //                                     ),
    //                                     TextSpan(
    //                                       text: event.type,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.bold,
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                               RichText(
    //                                 text: TextSpan(
    //                                   style: TextStyle(color: Colors.grey[900]),
    //                                   children: [
    //                                     TextSpan(
    //                                       text: AppLocalizations.of(context)!
    //                                           .lecturer,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.normal,
    //                                       ),
    //                                     ),
    //                                     TextSpan(
    //                                       text: event.lecturer,
    //                                       style: TextStyle(
    //                                         fontWeight: FontWeight.bold,
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               );
    //             },
    //           ),
    //         ),
    //       ],
    //     ),
    //   ));
    //   // });
  }
}
