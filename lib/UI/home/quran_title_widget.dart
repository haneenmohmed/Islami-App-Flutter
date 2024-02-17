import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/quarn_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
   String title ;
   String verseNumber ;
   int index ;
   QuranTitleWidget({required this.verseNumber , required this.title , required this.index});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName , arguments: QuarnDetailsArgs(index, title));
    },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(verseNumber ,
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 24,
              )),

          Text(title ,
        textAlign: TextAlign.center,
        style:TextStyle(
        fontSize: 24,
      ),) ,

        ],
      ),
    );
  }
}
