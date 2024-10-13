import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../app_services.dart';
import 'register_notifications.dart';
import 'show_notifications.dart';

class InitialNotifications {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static initialize() async {
    const android = AndroidInitializationSettings('app_icon');
    const iOS = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(
      initSettings,
    );
    await RegisterNotification.registerNotification();
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) {
      debugPrint("message is  $message");
      if (message != null) {
        ShowNotifications.showNotification(
            title: message.notification!.title!,
            body: message.notification!.body!);
      }
    });
    messaging.getToken().then(
          (value) => {
            if (value != null)
              {
                AppServices.fcmToken = value,
                log("___FCM TOKEN IS : $value"),
                debugPrint("___FCM TOKEN IS : $value")
              },
          },
        );
  }
}
