import 'package:flutter/material.dart';
import 'package:local_notifications_testing_flutter/screen/home_screen.dart';
import 'package:local_notifications_testing_flutter/services/notification_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationServices().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Notification Testing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
