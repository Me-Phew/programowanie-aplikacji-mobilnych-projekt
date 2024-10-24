import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Event {
  final String title; // Tytuł zajęć
  final TimeOfDay startTime; // Czas rozpoczęcia
  final TimeOfDay endTime; // Czas zakończenia
  final String room; // Sala
  final String type; // Rodzaj zajęć
  final String lecturer; // Wykładowca
  final DateTime date;

  Event({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.room,
    required this.lecturer,
    required this.type,
    required this.date,
  });
}

// Pobieranie bazy danych :)
final eventsProvider = StreamProvider.autoDispose((ref) {
  return FirebaseFirestore.instance
      .collection('events')
      .snapshots()
      .map((snapshot) {
    return snapshot.docs.map((doc) {
      return Event(
        title: doc['title'],
        startTime: TimeOfDay(
          hour: int.parse(doc['startTime'].split(':')[0]),
          minute: int.parse(doc['startTime'].split(':')[1]),
        ),
        endTime: TimeOfDay(
          hour: int.parse(doc['endTime'].split(':')[0]),
          minute: int.parse(doc['endTime'].split(':')[1]),
        ),
        room: doc['room'],
        lecturer: doc['lecturer'],
        type: doc['type'],
        date: DateTime.parse(doc['date']),
      );
    }).toList();
  });
});
