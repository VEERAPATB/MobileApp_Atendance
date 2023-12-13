import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in.dart';
import 'package:flutter_application_1/screens/LaunchScreen.dart';
import 'package:flutter_application_1/screens/Welcome.dart';
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_application_1/screens/show_detail.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/submit_page.dart';
import 'package:flutter_application_1/screens/submit_page_2.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.white),
        useMaterial3: true
      ),
      initialRoute: '/launch',
      routes: <String ,WidgetBuilder>{
        '/launch' : (BuildContext context) => const LaunchScreen(),
        '/login' : (BuildContext context) => const LoginPage(),
        '/login/success' : (BuildContext context) => const Welcome(),
        '/login/profile' : (BuildContext context) => const Profile(),
        '/login/home' : (BuildContext context) => Dashboard(),
        '/login/attendance/CE454' : (BuildContext context) => const Submit(),
        '/login/attendance/CE481' : (BuildContext context) => const Submit_2(),
        '/login/attendance/success' : (BuildContext context) => const Show_Detail(),
      },
    );
  }
}
