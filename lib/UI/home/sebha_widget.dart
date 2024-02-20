import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SebhaWidget extends StatefulWidget {
  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> with SingleTickerProviderStateMixin {
  List<String> duaa = [
    "الله اكبر ",
    "الحمد لله",
    "لا اله الا الله",
    "سبحان الله"
  ];
  int index = 0 ;
  double angle= 0;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
          Container(
              margin: EdgeInsets.only(left: 50),
              child: Image.asset('assets/images/head of seb7a.png', height: 100,)),
          Container(
            margin: EdgeInsets.only(top: 76),
              height: 200,
              child: GestureDetector(
                onTap: (){
                  onClick();
                },
                child: Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/images/body of seb7a.png',)),
              )),

          ],
    ),
        SizedBox(height: 43), // Spacer below the stack
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text(
                "عدد التسبيحات ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'El Messiri',
                ),
              ),
              SizedBox(height: 26),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'El Messiri',
                  ),
                ),
              ),
              SizedBox(height: 22),
              GestureDetector(
                onTap: (){
                  onClick();
                },
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      '${duaa[index]}',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'El Messiri',
                        color: Colors.white,
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
    ],
    );
  }

onClick(){
    angle +=5;
    if(counter == 33){
      index++;

    }
    index = index %duaa.length;
    if(counter>=33){
      counter=0;
    }else{
      counter++;
    }
    counter++;
    setState(() {

    });
}

}
