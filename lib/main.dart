import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensorwave/config/theme/theme_data.dart';
import 'package:sensorwave/features/iot-security/presentation/pages/login_page.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp( ProviderScope(
    child: MainApp(),
  ));
}

// ignore: must_be_immutable
class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Sensorwave',
      theme: lightTheme,
      home: LoginPage(),
    );
  }

}
