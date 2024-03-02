import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSheet extends StatefulWidget {

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          getSelectedItem(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light),
          SizedBox(height: 16,),
          InkWell(onTap: ()async{
             await provider.changeTheme(provider.theme == ThemeMode.dark?ThemeMode.light:ThemeMode.dark);
            Navigator.pop(context);

          },
          child: getUnSelectedItem(provider.theme == ThemeMode.dark?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme){
    return Row(
      children: [
        Text(theme,  style: Theme.of(context).textTheme.labelLarge,),
        Spacer(),
        Icon(
          Icons.check,
          color:Theme.of(context).primaryColor ,
        )
      ],
    );
  }
  Widget getUnSelectedItem(String theme){
    return  Text(theme , style: Theme.of(context).textTheme.labelMedium);
  }
}
