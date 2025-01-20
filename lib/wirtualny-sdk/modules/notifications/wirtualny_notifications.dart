import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_application/utils/common.dart';
import 'package:flutter_application/wirtualny-sdk/models/announcemnet/announcement.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/announcements_response/announcements_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/errors_response/errors_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/message_response/message_response.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'wirtualny_notifications_exception.dart';

class WirtualnyNotifications {
  final log = Logger('WirtualWirtualnyNotificationsnyAuth');

  Future<Either<WirtualnyNotificationsException, MessageResponse>> addFCMToken(
      {required String fcmToken}) async {
    try {
      final response = await WirtualnyHttpClient.instance.dio.post(
        '/students/${WirtualnySdk.instance.auth.student!.id}/fcm-tokens',
        data: {
          'fcmToken': fcmToken,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
          },
        ),
      );

      MessageResponse addFcmTokenResponse =
          MessageResponse.fromJson(response.data);

      return right(addFcmTokenResponse);
    } on DioException catch (e) {
      if (e.response?.data['errors'] == null) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      ErrorsResponse errorsResponse = ErrorsResponse.fromJson(e.response!.data);

      if (errorsResponse.errors.isEmpty) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      return left(WirtualnyNotificationsException(
        dioException: e,
        message: errorsResponse.errors.first.message,
      ));
    } catch (e, stackTrace) {
      log.severe('ADD_FCM_TOKEN FAILED', e, stackTrace);

      return left(WirtualnyNotificationsException(
        message: e.toString(),
      ));
    }
  }

  Future<Either<WirtualnyNotificationsException, AnnouncementsResponse>>
      getAnnouncements() async {
    final prefs = await SharedPreferences.getInstance();

    if (!(await hasNetworkAccess())) {
      final savedSerializedAnnouncements = prefs.getString('announcements');

      if (savedSerializedAnnouncements == null) {
        return left(WirtualnyNotificationsException(
          message: 'No network access and no saved announcements',
        ));
      }

      final announcements = AnnouncementsResponse.fromJson(
          jsonDecode(savedSerializedAnnouncements));

      return right(announcements);
    }

    try {
      final response = await WirtualnyHttpClient.instance.dio.get(
        '/announcements?limit=100',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
          },
        ),
      );

      AnnouncementsResponse getAnnouncementsResponse =
          AnnouncementsResponse.fromJson(response.data);

      prefs.setString(
          'announcements', jsonEncode(getAnnouncementsResponse.toJson()));
      prefs.setString('announcementsLastUpdate', DateTime.now().toString());

      return right(getAnnouncementsResponse);
    } on DioException catch (e) {
      if (e.response?.data['errors'] == null) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      ErrorsResponse errorsResponse = ErrorsResponse.fromJson(e.response!.data);

      if (errorsResponse.errors.isEmpty) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      return left(WirtualnyNotificationsException(
        dioException: e,
        message: errorsResponse.errors.first.message,
      ));
    } catch (e, stackTrace) {
      log.severe('GET_ANNOUNCEMENTS FAILED', e, stackTrace);

      return left(WirtualnyNotificationsException(
        message: e.toString(),
      ));
    }
  }

  Future<Either<WirtualnyNotificationsException, Announcement>> getAnnouncement(
      String announcementId) async {
    try {
      final response = await WirtualnyHttpClient.instance.dio.get(
        '/announcements/$announcementId',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
          },
        ),
      );

      Announcement getAnnouncementsResponse =
          Announcement.fromJson(response.data);

      return right(getAnnouncementsResponse);
    } on DioException catch (e) {
      if (e.response?.data['errors'] == null) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      ErrorsResponse errorsResponse = ErrorsResponse.fromJson(e.response!.data);

      if (errorsResponse.errors.isEmpty) {
        return left(WirtualnyNotificationsException(dioException: e));
      }

      return left(WirtualnyNotificationsException(
        dioException: e,
        message: errorsResponse.errors.first.message,
      ));
    } catch (e, stackTrace) {
      log.severe('GET_ANNOUNCEMENTS FAILED', e, stackTrace);

      return left(WirtualnyNotificationsException(
        message: e.toString(),
      ));
    }
  }
}
