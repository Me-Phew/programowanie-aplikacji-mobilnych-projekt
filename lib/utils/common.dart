/// @file common.dart
/// @brief Funkcje pomocnicze używane w aplikacji.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:intl/intl.dart';

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

String getCourseTypeDisplayName(String lang, String name) {
  if (lang == "pl") {
    switch (name) {
      case 'fullTime':
        return 'Stacjonarne';
      case 'partTime':
        return 'Niestacjonarne';
      default:
        return name;
    }
  } else {
    switch (name) {
      case 'fullTime':
        return 'Full-time';
      case 'partTime':
        return 'Part-time';
      default:
        return name;
    }
  }
}

String getLevelOfStudyDisplayName(String lang, String name) {
  if (lang == "pl") {
    switch (name) {
      case 'firstDegree':
        return 'I stopnia';
      case 'secondDegree':
        return 'II stopnia';
      case 'uniformMaster':
        return 'Jednolite magisterskie';
      case 'postgraduate':
        return 'Podyplomowe';
      default:
        return name;
    }
  } else {
    switch (name) {
      case 'firstDegree':
        return 'First Degree';
      case 'secondDegree':
        return 'Second Degree';
      case 'uniformMaster':
        return 'Uniform Master';
      case 'postgraduate':
        return 'Postgraduate';
      default:
        return name;
    }
  }
}

String getObtainedTitleDisplayName(String lang, String name) {
  if (lang == "pl") {
    switch (name) {
      case 'engineer':
        return 'Inżynier';
      case 'master':
        return 'Magister';
      case 'doctor':
        return 'Doktor';
      default:
        return name;
    }
  } else {
    switch (name) {
      case 'engineer':
        return 'Engineer';
      case 'master':
        return 'Master';
      case 'doctor':
        return 'Doctor';
      default:
        return name;
    }
  }
}

String getFormattedDate(DateTime date) {
  return DateFormat('dd.MM.yyyy').format(date);
}

String getFormattedDateTime(DateTime date) {
  return DateFormat('dd.MM.yyyy HH:mm').format(date);
}

Future<bool> hasNetworkAccess() async {
  final List<ConnectivityResult> connectivityResult =
      await (Connectivity().checkConnectivity());

  return !connectivityResult.contains(ConnectivityResult.none);
}
