/**
 * @file common.dart
 * @brief Funkcje pomocnicze używane w aplikacji.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

/// @brief Pobiera nazwę wykładu do wyświetlenia w zależności od języka.
/// @param lang Kod języka (np. "pl" dla polskiego).
/// @param name Nazwa wykładu.
/// @return Nazwa wykładu do wyświetlenia.
String getLectureDisplayName(String lang, String name) {
  if (lang == "pl") {
    return name;
  } else {
    return name;
  }
}
