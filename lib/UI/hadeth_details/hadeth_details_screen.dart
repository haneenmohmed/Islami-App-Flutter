import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/hadeth_model.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider.dart';
import '../../style/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {

  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

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
          image: AssetImage(provider.theme == ThemeMode.dark?
          "assets/images/bg-dark.png":
          "assets/images/backgroundall.png"),
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
                child: Card(
                  child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.right,
                    headthModel.title,
                    style: Theme.of(context).textTheme.bodyMedium,
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
