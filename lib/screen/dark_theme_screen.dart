import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_change_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {

    // theme Changer provider
    final themeChanger = Provider.of<ThemeChangerProvider>(context);

    return Scaffold(

      appBar: AppBar(
        title: Text('Dark Theme Screen'),
      ),



      body:  Column(
        children: [

          // // switch button widget
          // Switch(
          //     value: ,
          //     onChanged: ,
          // ),

          // radio light button
          RadioListTile<ThemeMode>(
            title: Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),

          // radio dark button
          RadioListTile<ThemeMode>(
              title: Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),


          // radio system button
          RadioListTile<ThemeMode>(
              title: Text('System Theme'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),

        ],
      ),


    );
  }
}
