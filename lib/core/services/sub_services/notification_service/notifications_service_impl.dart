import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'notifications_service.dart';
import 'sub_service/initial_notifications.dart';
import 'sub_service/notifications_topic.dart';

class NotificationsServiceImpl implements NotificationsService {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  Future<void> init() async {
    await InitialNotifications.initialize();
  }

  @override
  void subscribeToTopic({required String topic}) {
    NotificationsTopic.subscribeToTopic(topic: topic);
  }

  @override
  void unsubscribeFromTopic({required String topic}) {
    NotificationsTopic.unsubscribeFromTopic(topic: topic);
  }
}
