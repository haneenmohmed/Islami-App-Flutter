import 'package:flutter/material.dart';

class AppTheme{
  static bool isDark = true ;
  static Color LightPrimary = Color(0xffB7935F);
  static Color DarkPrimary = Color(0xff141A2E);
  static Color DarkSecondary = Color(0xffFACC1D);
   static ThemeData lightTheme =  ThemeData(
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
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          titleTextStyle: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.black,
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(seedColor: LightPrimary,
         primary: LightPrimary,
         secondary : LightPrimary.withOpacity(0.57),
         onPrimary:Colors.white,
         onSecondary :Colors.black,
      ),
     bottomSheetTheme: BottomSheetThemeData(
         backgroundColor: Colors.white
     ),
     dividerColor: LightPrimary,
     textTheme: TextTheme(
       titleLarge: TextStyle(
         fontSize: 25 ,
          fontWeight: FontWeight.w600,
         color: Colors.black
       ),
         labelMedium:TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 25
         ),
       bodyMedium: TextStyle(
           color: Colors.black ,
           fontSize: 20,
           fontWeight: FontWeight.bold),
       labelSmall: TextStyle(
         fontSize: 16,
         color: Colors.black
       ),
       labelLarge: TextStyle(
         fontSize: 20,
         color: LightPrimary
       )
   ),
     cardTheme: CardTheme(
       color: Colors.white ,
       margin: EdgeInsets.all(20),
       elevation: 20 ,
       surfaceTintColor: Colors.transparent
     ),

     // textTheme: ,
      useMaterial3: true,
   );
   static ThemeData DarkTheme =  ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:DarkPrimary,
          selectedItemColor:DarkSecondary,
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
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          titleTextStyle: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.white,
          )
      ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(seedColor: DarkSecondary,
         primary: DarkPrimary,
         secondary : DarkSecondary,
         onPrimary:Colors.white,
         onSecondary :Colors.black,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: DarkPrimary
      ),
      dividerColor: DarkSecondary,
     textTheme: TextTheme(
         titleLarge: TextStyle(
             fontSize: 25 ,
             fontWeight: FontWeight.w600,
             color: Colors.white

         ),
       labelMedium:TextStyle(
         color: Colors.white,
         fontWeight: FontWeight.bold,
         fontSize: 25
       ),
         bodyMedium: TextStyle(
             color: DarkSecondary ,
             fontSize: 20,
             fontWeight: FontWeight.bold),
         labelSmall: TextStyle(
             fontSize: 16,
             color: Colors.white
         ),
         labelLarge: TextStyle(
             fontSize: 20,
             color: DarkSecondary
         )
     ),
     cardTheme: CardTheme(
         color: DarkPrimary ,
         margin: EdgeInsets.all(20),
         elevation: 20 ,
         surfaceTintColor: Colors.transparent
     ),


     // textTheme: ,
      useMaterial3: true,
   );

}