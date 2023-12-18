import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:professor_s_application1/theme/theme_helper.dart';
import 'package:professor_s_application1/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'professor_s_application1',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.registerScreen,
      routes: AppRoutes.routes,
    );
  }
}
