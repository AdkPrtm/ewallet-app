
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void registerNotification() async {
  late final FirebaseMessaging messaging;

  await Firebase.initializeApp();
  messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    var initiizationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInit = const DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    var initializationSettings = InitializationSettings(
        android: initiizationSettingsAndroid, iOS: iosInit);

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
        switch (notificationResponse.notificationResponseType) {
          case NotificationResponseType.selectedNotification:
            // selectNotification(notificationResponse.id.toString());
            break;
          case NotificationResponseType.selectedNotificationAction:
            // if (notificationResponse.actionId == navigationActionId) {
            //   selectNotificationStream.add(notificationResponse.payload);
            // }
            break;
        }
      },
    );
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;

      // AndroidNotification? android = message.notification?.android;
      if (notification != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
                iOS: DarwinNotificationDetails(
                  presentAlert: true,
                  presentBadge: true,
                  presentSound: true,
                ),
                android: AndroidNotificationDetails('1', 'pushnotification',
                    channelDescription: 'Test',
                    // color: Color(0xffff9d89),
                    colorized: true,
                    priority: Priority.max,
                    channelShowBadge: true,
                    importance: Importance.high,
                    playSound: true)));
      }
    });
  }
}