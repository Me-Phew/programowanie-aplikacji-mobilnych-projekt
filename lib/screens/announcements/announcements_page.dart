/// @file announcements_page.dart
/// @brief Plik dostarczający stronę ogłoszeń
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/wirtualny-sdk/models/announcemnet/announcement.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'announcement_details_page.dart';

/// @class AnnouncementsPage
/// @brief Klasa dostarczająca stronę ogłoszeń
///
/// Odpowiada za wyświetlanie listy ogłoszeń.
class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

/// @class _AnnouncementsPageState
/// @brief Stan dla klasy AnnouncementsPage
///
/// Zarządza stanem strony ogłoszeń.
class _AnnouncementsPageState extends State<AnnouncementsPage> {
  List<Announcement> _announcements = [];

  bool _isLoading = true;
  String? _errorFeedback;

  /// @brief Ładuje ogłoszenia
  ///
  /// Pobiera ogłoszenia z serwera i aktualizuje stan.
  Future<void> loadAnnouncements() async {
    final getAnnouncementsResult =
        await WirtualnySdk.instance.notifications.getAnnouncements();

    getAnnouncementsResult.fold(
      (l) {
        setState(() {
          _errorFeedback = l.message;
        });
      },
      (r) {
        setState(() {
          _announcements = r.docs;
        });
      },
    );

    _isLoading = false;
  }

  @override
  void initState() {
    super.initState();
    loadAnnouncements();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Ogłoszenia",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
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
                        child: Text("ODBERANE"),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Text("KOSZ"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildInboxList(),
                        _buildTrashBinList(),
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

  /// @brief Buduje listę odebranych ogłoszeń
  ///
  /// @return Widget listy odebranych ogłoszeń
  Widget _buildInboxList() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_errorFeedback != null) {
      return Center(
        child: Text(_errorFeedback!),
      );
    }

    return ListView.builder(
        itemCount: _announcements.length,
        itemBuilder: (context, index) {
          final announcement = _announcements[index];
          final createdAt = DateTime.parse(
              announcement.createdAt.toString()); // Parse the date
          final formattedDate = DateFormat('dd.MM.yyyy').format(createdAt);

          return ListTile(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AnnouncementDetailsPage(announcement: announcement)))
            },
            title: Row(
              children: [
                Text(_announcements[index].subject.length > 22
                    ? '${_announcements[index].subject.substring(0, 22)}...'
                    : _announcements[index].subject),
                const Spacer(),
                Text(
                  formattedDate,
                  style: TextStyle(color: Colors.black.withAlpha(200)),
                ),
              ],
            ),
            subtitle: Text(_announcements[index].subject),
            trailing: IconButton(
              color: Colors.red.shade500,
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _announcements.removeAt(index);
                });
              },
            ),
          );
        });
  }

  /// @brief Buduje listę ogłoszeń w koszu
  ///
  /// @return Widget listy ogłoszeń w koszu
  Widget _buildTrashBinList() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_errorFeedback != null) {
      return Center(
        child: Text(_errorFeedback!),
      );
    }

    return ListView.builder(
        itemCount: _announcements.length,
        itemBuilder: (context, index) {
          final announcement = _announcements[index];
          final createdAt = DateTime.parse(
              announcement.createdAt.toString()); // Parse the date
          final formattedDate = DateFormat('dd.MM.yyyy').format(createdAt);

          return ListTile(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AnnouncementDetailsPage(announcement: announcement)))
            },
            title: Row(
              children: [
                Text(_announcements[index].subject.length > 22
                    ? '${_announcements[index].subject.substring(0, 22)}...'
                    : _announcements[index].subject),
                const Spacer(),
                Text(
                  formattedDate,
                  style: TextStyle(color: Colors.black.withAlpha(200)),
                ),
              ],
            ),
            subtitle: Text(_announcements[index].subject),
          );
        });
  }
}
