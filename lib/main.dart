import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_app/providers/login_provider.dart';
import 'package:shoping_app/providers/product_provider.dart';
import 'package:shoping_app/providers/registration_provider.dart';
import 'package:shoping_app/screens/product_page.dart';
import 'package:shoping_app/screens/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegistrationProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider())
      ],
      child: MaterialApp(
        title: 'fady Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RegistrationPage(),
      ),
    );
  }
}
