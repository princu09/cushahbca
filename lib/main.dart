import 'package:flutter/material.dart';
import 'package:quiz_nfg2/helper/functions.dart';
import 'package:quiz_nfg2/views/home.dart';
import 'package:quiz_nfg2/views/signin.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(MyApp());
}

  
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedin = false;
  @override
  void initState() {
    checkUserLoggedInStatus();
    super.initState();
  }

  checkUserLoggedInStatus() async {
    HelperFunctions.getUserLoggedInDetails().then((value) {
      setState(() {
        _isLoggedin = value;
      });
    });
  }


Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
              primarySwatch: Colors.red,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'C.U.Shah BCA',
              theme: theme,
              home:(_isLoggedin ?? false) ? Home() : SignIn(),
            );
        });
        }
  }
