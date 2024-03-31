import 'package:flutter/material.dart';
import 'package:local_notifications_testing_flutter/services/notification_services.dart';

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
        title: const Text('Local Notifications Testing'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NotificationServices().showNotification(
                  title: 'Hey Yo!!!',
                  body: 'Message from the developer',
                );
              },
              child: const Text('Get Local Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
