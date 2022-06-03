import 'package:flutter/material.dart';
import 'package:rimo/presentation/component/button/custom_button.dart';
import 'package:rimo/presentation/component/button/outline_button.dart';
import 'package:rimo/utils/constant/assest.dart';
import 'package:rimo/utils/theme/colors.dart';

import '../../component/button/outline.dart';
import '../auth/login.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Column(
           children: [
             Row(),
            const SizedBox(height: 40,),
             Image.asset(AppAsset.hangOver),
             const SizedBox(height: 100,),
             Image.asset(AppAsset.start),
            const  Text('Drivers App',
             style: TextStyle(
               color: AppColor.buttonColor,
               fontSize: 14
             ),),
            const Spacer(),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Column(
                 children: [
                   CustomButton(
                       ontap: (){

                       },
                       text: "New Driver"
                   ),
                   const SizedBox(height: 27,),
                   OutlineB(
                       ontap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                       },
                       text: "Login"
                   )
                 ],
               ),
             ),
             const SizedBox(height: 80,),

           ],
         ),
       ),
    );
  }
}
