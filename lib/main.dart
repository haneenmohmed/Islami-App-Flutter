import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/UI/home/home_screen.dart';
import 'package:islami_app/UI/quarn_details/quran_details_screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/style/app_theme.dart';
import 'package:provider/provider.dart';
import 'UI/hadeth_details/hadeth_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var provider = SettingsProvider();
  await provider.LastSettings();
  runApp(ChangeNotifierProvider(
      create: (context)=>provider,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar")
      ],
      locale :Locale(provider.language),
      theme: AppTheme.lightTheme,
      darkTheme:AppTheme.DarkTheme ,
      themeMode:provider.theme,
      initialRoute: HomeScreen.routeName,
      routes: {
           HomeScreen.routeName:(_)=>HomeScreen(),
           QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
           HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen(),

      },



    );
  }
}


