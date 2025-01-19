import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/announcements_response/announcements_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/errors_response/errors_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/message_response/message_response.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';

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
    try {
      final response = await WirtualnyHttpClient.instance.dio.get(
        '/announcements',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${WirtualnySdk.instance.auth.accessToken}',
          },
        ),
      );

      AnnouncementsResponse getAnnouncementsResponse =
          AnnouncementsResponse.fromJson(response.data);

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
      log.severe('ADD_FCM_TOKEN FAILED', e, stackTrace);

      return left(WirtualnyNotificationsException(
        message: e.toString(),
      ));
    }
  }
}
