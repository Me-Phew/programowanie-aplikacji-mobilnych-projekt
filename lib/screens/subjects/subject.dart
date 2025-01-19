/**
 * @file subject.dart
 * @brief Definicje klas reprezentujących przedmioty, oceny i egzaminy.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

class Subject {
  final String name;
  final String lecturer;
  final List<Grade> grades;
  final List<Exam> upcomingExams;
  final double averageGrade;
  final String type;  

  /**
   * @brief Konstruktor klasy Subject.
   * @param name Nazwa przedmiotu.
   * @param lecturer Wykładowca prowadzący przedmiot.
   * @param grades Lista ocen z przedmiotu.
   * @param upcomingExams Lista nadchodzących egzaminów z przedmiotu.
   * @param averageGrade Średnia ocena z przedmiotu.
   * @param type Typ przedmiotu (np. wykład, laboratorium).
   */
  Subject({
    required this.name,
    required this.lecturer,
    required this.grades,
    required this.upcomingExams,
    required this.averageGrade,
    required this.type,  
  });
}

class Grade {
  final double value;
  final String type;
  final DateTime date;
  final String description;

  /**
   * @brief Konstruktor klasy Grade.
   * @param value Wartość oceny.
   * @param type Typ oceny (np. egzamin, kolokwium).
   * @param date Data uzyskania oceny.
   * @param description Opis oceny.
   */
  Grade({
    required this.value,
    required this.type,
    required this.date,
    required this.description,
  });
}

class Exam {
  final String title;
  final DateTime date;
  final String description;
  final String location;

  /**
   * @brief Konstruktor klasy Exam.
   * @param title Tytuł egzaminu.
   * @param date Data egzaminu.
   * @param description Opis egzaminu.
   * @param location Lokalizacja egzaminu.
   */
  Exam({
    required this.title,
    required this.date,
    required this.description,
    required this.location,
  });
}

