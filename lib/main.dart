import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/Themes.dart';
import "package:google_fonts/google_fonts.dart";
void main() {
  // entry point
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
// return type widget of build function
Widget build(BuildContext context){
  return MaterialApp(
    

    themeMode:ThemeMode.light,
    theme: MyTheme.lightTheme(context),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context)=>HomePage(),
      // MyRoutes.loginRoute:(context)=>LoginPage(),
      // MyRoutes.homeRoute:(context)=>HomePage()

    },
  );
}
 
}
