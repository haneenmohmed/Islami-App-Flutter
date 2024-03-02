import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/tabs/lang_sheet_widget.dart';
import 'package:islami_app/UI/home/tabs/theme_sheet_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../providers/settings_provider.dart';

class SettingsWidget  extends StatefulWidget {
static const String routeName = "SettingsWidget";

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language , style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          )),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageButtonSheet(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                )
              ),
              child: Text(provider.language=="ar"?"العربية":"English" , style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).primaryColor
              )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(AppLocalizations.of(context)!.theme  , style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
          )),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeButtonSheet(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  )
              ),
              child: Text(provider.theme == ThemeMode.dark?
                   AppLocalizations.of(context)!.dark
                  :AppLocalizations.of(context)!.light
                , style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor
              ),
            ),
          ),

          )],



      ),
    );
  }
}

void showThemeButtonSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return ThemeSheet();
  });
}
void showLanguageButtonSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return LanguageSheet();
  });
}
