import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_page/home_page.dart';
import 'provider/eye_toggle_provider.dart';
import 'provider/active_button.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EyeToggle()),
        ChangeNotifierProvider(create: (_) => ActiveButton()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OTP Verification Form'),
          backgroundColor: Colors.amber[600],
          centerTitle: true,
        ),
        body: Otp(),
      ),
    );
  }
}

