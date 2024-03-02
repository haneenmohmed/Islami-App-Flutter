import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/UI/home/tabs/aheadth.dart';
import 'package:islami_app/UI/home/tabs/quran_widget.dart';
import 'package:islami_app/UI/home/tabs/radio_widget.dart';
import 'package:islami_app/UI/home/tabs/sebha_widget.dart';
import 'package:islami_app/UI/home/tabs/settings_widget.dart';
import 'package:islami_app/style/app_theme.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class HomeScreen  extends StatefulWidget {
  static const String routeName= "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex= 0;
  List<Widget> navWidget = [
    QuranWidget() ,
    AheadthWidget(),
    SebhaWidget(),
    RadioWidget(),
    SettingsWidget()
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.theme == ThemeMode.dark?
          "assets/images/bg-dark.png":
          "assets/images/backgroundall.png"),
              fit: BoxFit.fill
        )
      ),
      child: Scaffold(
         appBar: AppBar(
            title: Text("islamy"),
           // title: Text(AppLocalizations.of(context)!.islami),

         ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
           onTap: (index){
            setState(() {
              currentNavIndex= index;
            });
               },
          items: [
            BottomNavigationBarItem(
                    backgroundColor:  Theme.of(context).colorScheme.primary,
                   icon:ImageIcon(AssetImage("assets/images/1x/moshaf_gold.png")),
                   // label:"Quarn"
                  label: AppLocalizations.of(context)!.quran

            ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/hadith1x.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,

                      // label:"Aheadth"
                      label: AppLocalizations.of(context)!.ahadeth
    ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/sebha_blue1x.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,
                      // label:"sebha"
                      label: AppLocalizations.of(context)!.sebha

    ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/radio_blue1X.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,
                      // label:"radio"
                      label: AppLocalizations.of(context)!.radio

    ),
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).colorScheme.primary,
                icon:Icon(
                    Icons.settings
                ) ,
                label:AppLocalizations.of(context)!.settings
            ),

          ],
        ),
        body:navWidget[currentNavIndex],

      ),
    );
  }
}
