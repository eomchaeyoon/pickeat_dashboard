import 'package:flutter/material.dart';
import 'package:pickeat_dashboard/screens/page_screen.dart';
import 'package:pickeat_dashboard/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pickeat dashboard',
      theme: AppLightTheme.data,
      home: PageScreen(),
    );
  }
}
