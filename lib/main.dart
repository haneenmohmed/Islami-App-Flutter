import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/home_screen.dart';
import 'package:islami_app/UI/quarn_details/quran_details_screen.dart';

void main() {
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
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white ,
          selectedIconTheme: IconThemeData(
            size: 32
          ),
          unselectedIconTheme: IconThemeData(
            size: 22
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
titleTextStyle: TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.black,
)
        ),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffB7935F),
          primary: Color(0xffB7935F),
          secondary : Color(0xffB7935F).withOpacity(0.57),
          onPrimary:Colors.white,
          onSecondary :Colors.black,
        ),
      // textTheme: ,
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
           HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
      },



    );
  }
}


