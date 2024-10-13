import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';
import '../../../../../main.dart';
import 'show_notifications.dart';

class RegisterNotification {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static registerNotification() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      StreamSubscription<RemoteMessage> subscribe =
          FirebaseMessaging.onMessage.listen(
        (RemoteMessage message) async {
          LogHelper.logSuccess('Message title: ${message.notification?.title}, body: ${message.notification?.body}, data: ${message.data}');
          if (message.notification != null) {
            await ShowNotifications.showNotification(
                title: message.notification!.title!,
                body: message.notification!.body!);
          }
        },
      );
      subscribe.onError((data) {
        LogHelper.logError("error is $data");
      });
    }
  }
}
