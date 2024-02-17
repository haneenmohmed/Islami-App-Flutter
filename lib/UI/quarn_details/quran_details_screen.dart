import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuarnDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuarnDetailsArgs ;
    if(Lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/backgroundall.png"),
    fit: BoxFit.fill
    )
    ),
      child: Scaffold (
        appBar: AppBar(
           title: Text(args.title , style: TextStyle(
             fontSize: 26,
           ),),
        ),
        body: Card(
          margin: EdgeInsets.all(25),
          elevation: 10,
          child:Lines.isNotEmpty
            ?ListView.separated(
              itemBuilder: (context , index )=>Text(
                 "(${index+1}) ${Lines[index]} " ,textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black , fontSize: 22)),
              separatorBuilder: (context , index )=>Container(
                height: 2,
                color: Theme.of(context).primaryColor,
              ),
              itemCount: Lines.length)
              :Center(child: CircularProgressIndicator(),)
        ),
      ),
    );
  }

  List<String> Lines = [];

  void readQuranFile(int index)async{
  String quran = await rootBundle.loadString("assets/files/${index+1}.txt");
  Lines=quran.split("\n");
  print(Lines.length);
  setState(() {

  });

  }
}

class QuarnDetailsArgs {
  String title ;
  int index ;
  QuarnDetailsArgs(this.index , this.title);
}
