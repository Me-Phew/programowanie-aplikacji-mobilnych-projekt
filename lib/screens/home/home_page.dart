import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Zajęcia
class Event {
  final String title; // Tytuł zajęć
  final TimeOfDay startTime; // Czas rozpoczęcia
  final TimeOfDay endTime; // Czas zakończenia
  final String room; // Sala
  final String type; // Rodzaj zajęć
  final String lecturer; // Wykładowca

  Event(this.title, this.startTime, this.endTime, this.room, this.type,
      this.lecturer);
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();
  DateTime? selectedDay;

  // Przykładowa baza danych
  final Map<DateTime, List<Event>> events = {
    DateTime.utc(2024, 10, 21): [
      Event('Informatyka', TimeOfDay(hour: 9, minute: 0),
          TimeOfDay(hour: 10, minute: 30), 'S.2.1', 'Wykład', 'Dr. Kowalski'),
      Event(
          'Programowanie Mobilne',
          TimeOfDay(hour: 11, minute: 30),
          TimeOfDay(hour: 13, minute: 0),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
    ],
    DateTime.utc(2024, 10, 22): [
      Event('Infa', TimeOfDay(hour: 9, minute: 0),
          TimeOfDay(hour: 10, minute: 30), 'S.2.1', 'Wykład', 'Dr. Kowalski'),
      Event(
          'Sieci',
          TimeOfDay(hour: 11, minute: 30),
          TimeOfDay(hour: 13, minute: 0),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
      Event(
          'Programowanie Zawansowane',
          TimeOfDay(hour: 20, minute: 0),
          TimeOfDay(hour: 23, minute: 30),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
      Event(
          'Programowanie Zawansowane',
          TimeOfDay(hour: 20, minute: 0),
          TimeOfDay(hour: 23, minute: 30),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
    ],
    DateTime.utc(2024, 10, 23): [
      Event('Infa', TimeOfDay(hour: 9, minute: 0),
          TimeOfDay(hour: 10, minute: 30), 'S.2.1', 'Wykład', 'Dr. Kowalski'),
      Event(
          'Sieci',
          TimeOfDay(hour: 11, minute: 30),
          TimeOfDay(hour: 13, minute: 0),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
      Event(
          'Programowanie Zawansowane',
          TimeOfDay(hour: 20, minute: 0),
          TimeOfDay(hour: 23, minute: 30),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
    ],
    DateTime.utc(2024, 10, 11): [
      Event('Infa', TimeOfDay(hour: 9, minute: 0),
          TimeOfDay(hour: 10, minute: 30), 'S.2.1', 'Wykład', 'Dr. Kowalski'),
      Event(
          'Sieci',
          TimeOfDay(hour: 11, minute: 30),
          TimeOfDay(hour: 13, minute: 0),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
      Event(
          'Programowanie Zawansowane',
          TimeOfDay(hour: 20, minute: 0),
          TimeOfDay(hour: 23, minute: 30),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
    ],
    DateTime.utc(2024, 10, 27): [
      Event('Infa', TimeOfDay(hour: 9, minute: 0),
          TimeOfDay(hour: 10, minute: 30), 'S.2.1', 'Wykład', 'Dr. Kowalski'),
      Event(
          'Sieci',
          TimeOfDay(hour: 11, minute: 30),
          TimeOfDay(hour: 13, minute: 0),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
      Event(
          'Programowanie Zawansowane',
          TimeOfDay(hour: 20, minute: 0),
          TimeOfDay(hour: 23, minute: 30),
          'S.1.1',
          'Laboratoria',
          'Prof. Nowak'),
    ],
  };

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
    /*
    selectedDay != null: Sprawdza, czy zmienna selectedDay ma wartość (czyli czy użytkownik wybrał dzień w kalendarzu). Jeśli selectedDay jest null, oznacza to, że nie został jeszcze wybrany żaden dzień.
    Wyciąganie wydarzeń:

    events[selectedDay]: Jeśli selectedDay nie jest null, próbuje uzyskać listę wydarzeń dla wybranego dnia z mapy events. events to mapa, w której kluczami są daty, a wartościami są listy obiektów Event.
    Domyślna wartość:

    ?? []: Operator ?? oznacza, że jeśli events[selectedDay] zwróci null (czyli jeśli nie ma żadnych zajęć dla danego dnia), to selectedEvents zostanie ustawione na pustą listę []. Dzięki temu unikamy błędów, gdy nie ma przypisanych zajęć.
 
    Wynik:
    Jeśli selectedDay jest null, selectedEvents zostanie ustawione na pustą listę []. W przeciwnym razie selectedEvents będzie zawierać listę wydarzeń dla wybranego dnia.
    */

    final selectedEvents = selectedDay != null ? events[selectedDay] ?? [] : [];

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 30),
            Text("Plan zajęć",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            TableCalendar(
              locale: "pl_PL",
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
                  color: Color.fromRGBO(0, 118, 223, 1),
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.white,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),

              // Dodanie Kropek pod datami
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, date, focusedDay) {
                  final eventCount = events[date]?.length ?? 0;

                  return Stack(
                    children: [
                      Center(
                        child: Text(
                          '${date.day}',
                          style: TextStyle(
                            color: isSameDay(date, selectedDay)
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      if (eventCount > 0)
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 4.0,
                            children: List.generate(eventCount, (index) {
                              return Container(
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              );
                            }),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            // Karta wyświetlająca szczególy dnia
            Expanded(
              child: ListView.builder(
                itemCount: selectedEvents.length,
                itemBuilder: (context, index) {
                  final event = selectedEvents[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: Colors.grey[50],
                    child: ListTile(
                      title: Text(
                        event.title,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Rozdziel miejsce
                            children: [
                              // Lewa strona: Godzina i Sala
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${event.startTime.hour}:${event.startTime.minute.toString().padLeft(2, '0')} - '
                                    '${event.endTime.hour}:${event.endTime.minute.toString().padLeft(2, '0')}',
                                    style: GoogleFonts.poppins(
                                        textStyle:
                                            TextStyle(color: Colors.grey[900]),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey[900],
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Sala: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: event.room,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              // Prawa strona: Rodzaj, Wykładowca
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
                                          text: 'Rodzaj: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: event.type,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(color: Colors.grey[900]),
                                      children: [
                                        TextSpan(
                                          text: 'Prowadzący: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight
                                                .normal, // Nie pogrubiony
                                          ),
                                        ),
                                        TextSpan(
                                          text: event.lecturer,
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
          ],
        ),
      ),
    );
  }
}
