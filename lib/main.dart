import 'package:azkar_app_code_center_2/screens/about_screen.dart';
import 'package:azkar_app_code_center_2/screens/faqs_screen.dart';
import 'package:azkar_app_code_center_2/screens/home_screen.dart';
import 'package:azkar_app_code_center_2/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(){
  runApp(const MyApp());
  List names = [];
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
         Locale('ar'),
         Locale('en'),
      ],
      locale: const Locale('ar'),
      // home: LaunchScreen(),
      initialRoute:'/launch_screen' ,
      routes: {
        '/launch_screen' : (context) => const LaunchScreen(),
        '/home_screen' : (context) =>  HomeScreen(),
        '/about_screen' : (context) =>  const AboutScreen(),
        '/faqs_screen' : (context) =>  const FAQsScreen(message: 'بيانات واجهة الاسئلة الشائعة'),



      },
    );
  }
}
