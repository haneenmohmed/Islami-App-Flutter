import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          getSelectedItem(provider.language=="ar"?"العربية":"English"),
          SizedBox(height: 16,),
          InkWell(
              onTap: () async {
               await provider.changeLanguage(provider.language=="ar"?"en":"ar");
               Navigator.pop(context);
              },
              child: getUnSelectedItem(provider.language=="ar"?"English":"العربية"))
        ],
      ),
    );
  }

  Widget getSelectedItem(String Language){
    return Row(
      children: [
        Text(Language, style: Theme.of(context).textTheme.labelLarge),
        Spacer(),
        Icon(
          Icons.check,
          color:Theme.of(context).primaryColor ,
        )
      ],
    );
  }
  Widget getUnSelectedItem(String Language){
    return  Text(Language ,style: Theme.of(context).textTheme.labelMedium);
  }
}
