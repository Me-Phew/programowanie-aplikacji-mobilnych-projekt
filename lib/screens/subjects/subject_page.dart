/**
 * @file subject_page.dart
 * @brief Ekran wyświetlający przedmioty i oceny studenta.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'package:flutter/material.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/subjects/subject.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class GradesPage extends ConsumerWidget {
  /**
   * @brief Konstruktor widgetu GradesPage.
   */
  GradesPage({super.key});

  final List<Subject> subjects = [
    Subject(
      name: "Programowanie obiektowe",
      lecturer: "dr inż. Jan Kowalski",
      averageGrade: 5.0,
      type: "Wykład",
      grades: [
        Grade(
          value: 5.0,
          type: "Egzamin",
          date: DateTime.now(),
          description: "Egzamin końcowy",
        ),
        Grade(
          value: 5.0,
          type: "Kolokwium",
          date: DateTime.now().subtract(Duration(days: 14)),
          description: "Kolokwium z dziedziczenia",
        ),
        Grade(
          value: 4.5,
          type: "Projekt",
          date: DateTime.now().subtract(Duration(days: 30)),
          description: "Implementacja wzorców projektowych",
        ),
      ],
      upcomingExams: [
        Exam(
          title: "Kolokwium z wzorców",
          date: DateTime.now().add(Duration(days: 7)),
          description: "Wzorce projektowe - część 2",
          location: "Sala 216A",
        ),
      ],
    ),
    Subject(
      name: "Bazy danych",
      lecturer: "dr Anna Nowak",
      averageGrade: 4.0,
      type: "Laboratorium",
      grades: [
        Grade(
          value: 4.0,
          type: "Kolokwium",
          date: DateTime.now(),
          description: "SQL podstawy",
        ),
        Grade(
          value: 4.0,
          type: "Projekt",
          date: DateTime.now().subtract(Duration(days: 10)),
          description: "Projekt bazy danych",
        ),
      ],
      upcomingExams: [
        Exam(
          title: "Egzamin końcowy",
          date: DateTime.now().add(Duration(days: 14)),
          description: "Egzamin z całego semestru",
          location: "Aula Główna",
        ),
      ],
    ),
    Subject(
      name: "Analiza matematyczna",
      lecturer: "prof. dr hab. Marek Wiśniewski",
      averageGrade: 3.0,
      type: "Ćwiczenia",
      grades: [
        Grade(
          value: 3.0,
          type: "Kolokwium",
          date: DateTime.now(),
          description: "Kolokwium z całek",
        ),
        Grade(
          value: 3.0,
          type: "Aktywność",
          date: DateTime.now().subtract(Duration(days: 5)),
          description: "Ocena z aktywności",
        ),
      ],
      upcomingExams: [
        Exam(
          title: "Poprawa kolokwium",
          date: DateTime.now().add(Duration(days: 3)),
          description: "Poprawa kolokwium z całek",
          location: "Sala 115",
        ),
      ],
    ),
    Subject(
      name: "Fizyka",
      lecturer: "dr hab. Piotr Nowacki",
      averageGrade: 2.5,
      type: "Wykład + Laboratorium",
      grades: [
        Grade(
          value: 2.0,
          type: "Kolokwium",
          date: DateTime.now(),
          description: "Mechanika kwantowa",
        ),
        Grade(
          value: 3.0,
          type: "Laboratorium",
          date: DateTime.now().subtract(Duration(days: 7)),
          description: "Sprawozdanie z doświadczeń",
        ),
      ],
      upcomingExams: [
        Exam(
          title: "Egzamin poprawkowy",
          date: DateTime.now().add(Duration(days: 21)),
          description: "Termin poprawkowy",
          location: "Sala 201",
        ),
      ],
    ),
    Subject(
      name: "Systemy operacyjne",
      lecturer: "dr inż. Tomasz Adamski",
      averageGrade: 4.5,
      type: "Laboratorium",
      grades: [
        Grade(
          value: 4.5,
          type: "Projekt",
          date: DateTime.now(),
          description: "Implementacja algorytmów szeregowania",
        ),
        Grade(
          value: 4.5,
          type: "Kolokwium",
          date: DateTime.now().subtract(Duration(days: 3)),
          description: "Zarządzanie procesami",
        ),
      ],
      upcomingExams: [
        Exam(
          title: "Kolokwium końcowe",
          date: DateTime.now().add(Duration(days: 10)),
          description: "Systemy plików i pamięć wirtualna",
          location: "Laboratorium 3",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              AppLocalizations.of(context)!.subjects,
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                final subject = subjects[index];
                return SubjectCard(subject: subject);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SubjectCard extends ConsumerWidget {
  final Subject subject;

  /**
   * @brief Konstruktor widgetu SubjectCard.
   * @param subject Obiekt przedmiotu zawierający dane do wyświetlenia.
   */
  const SubjectCard({super.key, required this.subject});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);

    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      color: isDarkMode ? Colors.grey[900] : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubjectDetailsPage(subject: subject),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: _getGradeColor(subject.averageGrade),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    subject.averageGrade.toStringAsFixed(1),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subject.name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subject.lecturer,
                      style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    if (subject.upcomingExams.isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Najbliższy egzamin: ${subject.upcomingExams.first.date.day}.${subject.upcomingExams.first.date.month}",
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /**
   * @brief Pobiera kolor oceny na podstawie jej wartości.
   * @param grade Wartość oceny.
   * @return Kolor odpowiadający ocenie.
   */
  Color _getGradeColor(double grade) {
    if (grade >= 4.5) return Colors.green;
    if (grade >= 3.5) return Colors.blue;
    if (grade >= 3.0) return Colors.orange;
    return Colors.red;
  }
}

class SubjectDetailsPage extends ConsumerWidget {
  final Subject subject;

  /**
   * @brief Konstruktor widgetu SubjectDetailsPage.
   * @param subject Obiekt przedmiotu zawierający dane do wyświetlenia.
   */
  const SubjectDetailsPage({super.key, required this.subject});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    @override
    Widget build(BuildContext context, WidgetRef ref) {
      final isDarkMode = ref.watch(darkModeProvider);

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: isDarkMode ? Colors.white : Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                subject.name,
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    // Updated TabBar without background container
                    TabBar(
                      indicator: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      splashBorderRadius: BorderRadius.circular(12),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[600],
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      dividerColor: Colors.transparent,
                      tabs: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(AppLocalizations.of(context)!.grades),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(AppLocalizations.of(context)!.exams),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildGradesTab(isDarkMode),
                          _buildExamsTab(isDarkMode),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildGradesTab(bool isDarkMode) {
      return ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: subject.grades.length,
        itemBuilder: (context, index) {
          final grade = subject.grades[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[900] : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: _getGradeColor(grade.value),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color:
                            _getGradeColor(grade.value).withValues(alpha: .3),
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      grade.value.toString(),
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          grade.type,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          grade.description,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? Colors.grey[300]
                                : Colors.grey[800],
                          ),
                        ),
                        Text(
                          DateFormat('dd.MM.yyyy').format(grade.date),
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? Colors.grey[400]
                                : Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget _buildExamsTab(bool isDarkMode) {
      return ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: subject.upcomingExams.length,
        itemBuilder: (context, index) {
          final exam = subject.upcomingExams[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey[900] : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orange[400],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withValues(alpha: .3),
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(Icons.event_note, color: Colors.white, size: 30),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          exam.title,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          exam.description,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? Colors.grey[300]
                                : Colors.grey[800],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: isDarkMode
                                  ? Colors.grey[400]
                                  : Colors.grey[700],
                            ),
                            SizedBox(width: 4),
                            Text(
                              exam.location,
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: isDarkMode
                                    ? Colors.grey[400]
                                    : Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          DateFormat('dd.MM.yyyy').format(exam.date),
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? Colors.grey[400]
                                : Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    /**
   * @brief Pobiera kolor oceny na podstawie jej wartości.
   * @param grade Wartość oceny.
   * @return Kolor odpowiadający ocenie.
   */
    Color _getGradeColor(double grade) {
      if (grade >= 4.5) return Colors.green;
      if (grade >= 3.5) return Colors.blue;
      if (grade >= 3.0) return Colors.orange;
      return Colors.red;
    }
  }
}
