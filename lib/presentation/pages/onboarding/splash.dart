import 'package:flutter/material.dart';
import 'package:rimo/presentation/pages/onboarding/start.dart';
import 'package:rimo/utils/constant/assest.dart';
import 'package:rimo/utils/theme/colors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashColor,
      body: Column(
        children: [
          Row(),
          Flexible(
            flex: 2,
              child: Container()),
           Image.asset(AppAsset.splash),
          Flexible(
            flex: 1,
              child: Container()),
          Image.asset(AppAsset.illustraton2),
          Flexible(
            flex: 1,
              child: Container()),
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed( const Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context)=>const Start()), (route) => false);
    });
  }
}
