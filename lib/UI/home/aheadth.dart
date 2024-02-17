import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/UI/home/headth_title.dart';

import 'hadeth_model.dart';

class AheadthWidget extends StatefulWidget {

  @override
  State<AheadthWidget> createState() => _AheadthWidgetState();
}

class _AheadthWidgetState extends State<AheadthWidget> {
  @override
  Widget build(BuildContext context) {
   if(allHeadth.isEmpty){
     loadAheadthFile();
   }
    return Column(
      children: [
        Expanded(child:
        Image.asset("assets/images/haedth-image.png")),
        Container(
          alignment: Alignment.center,
          width:  double.infinity,
          decoration: BoxDecoration(
            border:Border.symmetric(horizontal: BorderSide(
              color: Theme.of(context).primaryColor ,
              width: 2
            ))
          ),
          child: Text(
            "Aheadth" ,
            style: TextStyle(
            fontSize: 24
          ),
          ),
        ),
        Expanded(
          flex: 3,
            child: allHeadth.isEmpty
            ?Center(child:CircularProgressIndicator(), )
              :ListView.separated(
                  itemBuilder:(context,index)=> Headth_Title_Item(hadeth: allHeadth[index]),
                  separatorBuilder: (context , index){
                    return Container(
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.all(5),
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                    );
                  },
                  itemCount: allHeadth.length),
            )]);

  }

List<HeadthModel>allHeadth=[];


  void loadAheadthFile()async{
    String ahadeathContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String>hadethList = ahadeathContent.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      List<String> oneHeadth = hadethList[i].trim().split("\n");
      String headthTitle = oneHeadth[0];
      oneHeadth.removeAt(0);
      String headthContent = oneHeadth.join(" ");
      allHeadth.add(HeadthModel(headthContent, headthTitle));
    }
  setState(() {

  });

}}

