import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:rimo/presentation/pages/onboarding/splash.dart';
import 'package:rimo/provider/auth_provider.dart';
import 'package:rimo/utils/theme/apptheme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_)=>AuthProvider())
    ],
      child: const MyApp()));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home:const Splash(),
    );
  }
}
