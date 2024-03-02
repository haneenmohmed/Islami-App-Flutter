import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/UI/home/hadeth_model.dart';

class Headth_Title_Item extends StatelessWidget {
HeadthModel hadeth ;
 Headth_Title_Item({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName , arguments: hadeth);
      },
      child: Text(
      hadeth.content,
        textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium),
    );
  }
}
