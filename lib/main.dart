import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management_starting/provider/count_provider.dart';
import 'package:provider_state_management_starting/provider/example_one_provider.dart';
import 'package:provider_state_management_starting/provider/favourite_provider.dart';
import 'package:provider_state_management_starting/provider/theme_change_provider.dart';
import 'package:provider_state_management_starting/screen/count_example.dart';
import 'package:provider_state_management_starting/screen/dark_theme_screen.dart';
import 'package:provider_state_management_starting/screen/example_one.dart';
import 'package:provider_state_management_starting/screen/favourite/favourite_screen.dart';
import 'package:provider_state_management_starting/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // provider declaration
    return MultiProvider(

      // provider initialize
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],

      child: Builder(builder: (BuildContext context){

        // theme Changer provider
        final themeChanger = Provider.of<ThemeChangerProvider>(context);

        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            appBarTheme: AppBarTheme(
              color: Colors.blue
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),

          // dark theme add
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(
              color: Colors.teal,
            )
          ),

          // main screen
          home: const DarkThemeScreen(),

        );
      },
      ) ,
    );

  }
}

