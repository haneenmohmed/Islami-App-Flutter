import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {

  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    final headthModel =   ModalRoute.of(context)?.settings.arguments as HeadthModel?;
     if (headthModel == null) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Error'),
         ),
         body: Center(
           child: Text('No HadethModel provided'),
         ),
       );
     }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundall.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            headthModel.content,
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Card(
                  margin: EdgeInsets.all(25),
                  elevation: 10,
                  child: Text(
                    textAlign: TextAlign.right,
                    headthModel.title,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
