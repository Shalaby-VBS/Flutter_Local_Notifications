import 'package:flutter/material.dart';
import 'package:local_notification_android_ios/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Notifications'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show notifications'),
          onPressed: () {
            NotificationService().showNotification(
                title: 'SHALABY', body: 'It works successfully 👍🏼');
          },
        ),
      ),
    );
  }
}
