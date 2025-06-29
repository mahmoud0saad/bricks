import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

@pragma('vm:entry-point')
Future<void> onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  // This is triggered when the user taps a notification while the app is in foreground or background
  print('Notification clicked with payload: ${notificationResponse.payload}');
  // TODO: Handle the notification response
  // Parse listId from the payload

  // Navigate to the list details screen if listId is valid
}

@pragma('vm:entry-point')
void handleAppOpenFromTerminatedState() async {
  // When the app is opened from a terminated state via notification tap
  final RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();

  if (initialMessage != null) {
    print(
        "App opened from terminated state by notification with data: ${initialMessage.data}");
    // You can navigate to a specific screen based on the data here
    final String? payload = initialMessage.data['listId'];

    // Handle the payload, for example, navigate to the relevant screen
    // TODO: Handle the notification response
    if (payload != null) {}
  }

  // When the app is opened from a background state via notification tap
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print(
        "App opened from background state by notification with data: ${message.data}");
    // Handle navigation or other printic based on message.data

    // TODO: Handle the notification response    message.data;
    // Handle the payload, for example, navigate to the relevant screen
  });
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (message.notification != null) {
    NotificationHelper().showLocalNotification(message);
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationHelper {
  static Future<void> init() async {
    FirebaseMessaging.onMessage.listen(_firebaseMessagingBackgroundHandler);
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: DarwinInitializationSettings());

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
        onDidReceiveBackgroundNotificationResponse:
            onDidReceiveNotificationResponse);

    // Handle notification if the app was launched by tapping on a notification
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails != null &&
        notificationAppLaunchDetails.didNotificationLaunchApp) {
      // Get the payload from the notification that launched the app
      final String? payload =
          notificationAppLaunchDetails.notificationResponse?.payload;
      // TODO: Handle the notification response
    }

    // Handle background notification click when app is terminated
    handleAppOpenFromTerminatedState();
  }

  void showLocalNotification(RemoteMessage notification) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'tellme_reminder_channel',
      'tellme reminder',
      channelDescription: "tellme reminder",
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      int.tryParse(notification.data['listId']) ?? 0,
      notification.notification!.title,
      notification.notification!.body,
      platformChannelSpecifics,
      payload: notification.data['listId'],
    );
  }
}
