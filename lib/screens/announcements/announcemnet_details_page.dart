/**
 * @file announcemnet_details_page.dart
 * @brief Plik dostarczający stronę szczegółów ogłoszenia
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_application/wirtualny-sdk/models/announcemnet/announcement.dart';

/**
 * @class AnnouncementDetailsPage
 * @brief Klasa dostarczająca stronę szczegółów ogłoszenia
 * 
 * Odpowiada za wyświetlanie szczegółów wybranego ogłoszenia.
 */
class AnnouncementDetailsPage extends ConsumerWidget {
  final Announcement announcement;

  /**
   * @brief Konstruktor klasy AnnouncementDetailsPage
   * 
   * @param announcement Ogłoszenie do wyświetlenia
   */
  const AnnouncementDetailsPage({super.key, required this.announcement});

  /**
   * @brief Buduje widget strony szczegółów ogłoszenia
   * 
   * @param context Kontekst budowania widgetu
   * @param ref Referencja do providerów Riverpod
   * @return Widget strony szczegółów ogłoszenia
   */
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createdAt =
        DateTime.parse(announcement.createdAt.toString()); // Parse the date
    final formattedDate = DateFormat('dd.MM.yyyy HH:mm').format(createdAt);

    return Scaffold(
      appBar: AppBar(
        title: Text("Wiadomości"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              announcement.subject,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text("Od: Dziekanat"),
            Text("Do: 2(IS)"),
            Text("Data: $formattedDate"),
            Text("Przeczytana: Tak"),
            const SizedBox(height: 16),
            Html(data: announcement.contentHtml),
          ],
        ),
      ),
    );
  }
}
