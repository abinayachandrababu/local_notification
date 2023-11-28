import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notification/screen_notification.dart';

void main() {
  AwesomeNotifications().initialize(
      null,
      [
      NotificationChannel(
      channelKey: 'high_importance_channel',
      channelName: 'Basic notifications',
      channelDescription: 'Notification Channel For basic tests',
  )
  ],
      debug: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenNotification(),
    );
  }
}


