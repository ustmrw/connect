import 'package:connect/onboarding.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:connect/util/model_theme.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: themeNotifier.isDark
                  ? ThemeData(
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      brightness: Brightness.dark,
                      primaryColor: Colors.teal,
                      primarySwatch: Colors.teal)
                  : ThemeData(
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      brightness: Brightness.light,
                      primaryColor: Colors.blue,
                      primarySwatch: Colors.blue),
              home: OnboardingPages());
        },
      ),
    );
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.teal,
      ));
}
