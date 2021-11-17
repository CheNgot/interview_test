import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:interview_test/screens/login_screen/login_screen.dart';
import 'package:interview_test/screens/register_screen/register_screen.dart';
import 'package:interview_test/screens/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      routes: {
        '/register_screen': (context) => RegisterScreen(),
        '/login_screen': (context) => LoginScreen(),
      },
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('vi', 'VN'), // Spanish, no country code

      ],
      home: SplashScreen(),
    );
  }
}
