import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_application/wirtualny-sdk/models/announcemnet/announcement.dart';

class AnnouncementDetailsPage extends ConsumerWidget {
  final Announcement announcement;

  const AnnouncementDetailsPage({super.key, required this.announcement});

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
