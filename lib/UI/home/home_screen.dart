import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/aheadth.dart';
import 'package:islami_app/UI/home/quran_widget.dart';
import 'package:islami_app/UI/home/radio_widget.dart';
import 'package:islami_app/UI/home/sebha_widget.dart';

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
    RadioWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundall.png"),
              fit: BoxFit.fill
        )
      ),
      child: Scaffold(
         appBar: AppBar(
           title: Text("Islamy"),
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
                   label:"Quarn" ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/hadith1x.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,

                      label:"Aheadth" ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/sebha_blue1x.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,

                      label:"sebha" ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/1x/radio_blue1X.png")) ,
                      backgroundColor:  Theme.of(context).colorScheme.primary,

                      label:"radio" ),

          ],
        ),
        body:navWidget[currentNavIndex],

      ),
    );
  }
}
