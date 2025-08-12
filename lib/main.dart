

import 'package:flutter/material.dart';
import 'package:example/constans.dart';
import 'package:example/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: kPrimaryColor,
      ),

      // دعم اللغات
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
     
      ],
      supportedLocales: const [
        Locale('en'), // إنجليزي
        Locale('ar'), // عربي
      ],
       locale: const Locale('ar'), // اللغة الافتراضية عربي
      home: const HomeScreen(),
    );
  }
}
