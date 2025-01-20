/**
 * @file common.dart
 * @brief Funkcje pomocnicze używane w aplikacji.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @author Marcin Dudek
 * @author Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

/// @brief Pobiera nazwę wykładu do wyświetlenia w zależności od języka.
/// @param lang Kod języka (np. "pl" dla polskiego).
/// @param name Nazwa wykładu.
/// @return Nazwa wykładu do wyświetlenia.
String getLectureFormDisplayName(String lang, String name) {
  if (lang == "pl") {
    switch (name) {
      case 'lecture':
        return 'Wykład';
      case 'exercises':
        return 'Ćwiczenia';
      case 'lab':
        return 'Laboratorium';
      case 'project':
        return 'Projekt';
      case 'language':
        return 'Lektorat';
      case 'practice':
        return 'Praktyka';
      case 'seminar':
        return 'Seminarium';
      case 'consultation':
        return 'Konsultacje';
      case 'exam':
        return 'Egzamin';
      case 'other':
        return 'Inne';
      default:
        return name;
    }
  } else {
    switch (name) {
      case 'lecture':
        return 'Wykład';
      case 'exercises':
        return 'Ćwiczenia';
      case 'lab':
        return 'Laboratorium';
      case 'project':
        return 'Projekt';
      case 'language':
        return 'Lektorat';
      case 'practice':
        return 'Praktyka';
      case 'seminar':
        return 'Seminarium';
      case 'consultation':
        return 'Konsultacje';
      case 'exam':
        return 'Egzamin';
      case 'other':
        return 'Inne';
      default:
        return name;
    }
  }
}
