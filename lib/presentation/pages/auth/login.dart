import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rimo/presentation/component/appbar/appbar.dart';
import 'package:rimo/presentation/component/button/custom_button.dart';
import 'package:rimo/presentation/component/input/custom_input.dart';
import 'package:rimo/presentation/component/text/text.dart';
import 'package:rimo/provider/auth_provider.dart';
import 'package:rimo/utils/constant/assest.dart';
import '../home/home.dart';

class Login extends StatelessWidget {

TextEditingController number = TextEditingController();
TextEditingController password = TextEditingController();
late AuthProvider authProvider;
final  formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    authProvider = Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: Rimobar(context),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key:formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                 Rimotext('Enter Phone Number',fonsize: 22,fontWeight: FontWeight.w800),
                const SizedBox(height: 8,),
                Rimotext("Login with your registered phone \nnumber.",fontWeight: FontWeight.w500),
                const SizedBox(height: 46,),
                Row(
                  children: [
                    countrycode(),
                    const SizedBox(width: 18,),
                    Expanded(child:CustomInput(
                      hint: "Phone Number",
                        textInputType: TextInputType.phone,
                        controller: number))
                  ],
                ),
                const SizedBox(height: 27,),
                CustomInput(
                  secure: true,
                    hint: "Enter Password",
                    controller: password),
                const SizedBox(height: 60,),
                CustomButton(ontap: (){
                  if(formKey.currentState!.validate()){
                    login(context);
                  }

                },
                    text: 'Login'
                ),
                const SizedBox(height: 50,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Rimotext('Forgot Password?',fontWeight: FontWeight.w600)
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Image.asset(AppAsset.fingerprint),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

 Widget countrycode() {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color:Colors.grey )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Center(child: Rimotext('NG (+234)',fonsize: 18,)),
      ),
    );
 }

  void login(BuildContext context) async{
   var data =await authProvider.login(number: number.text, password: password.text);
   if(data!=null){
     Navigator.pushAndRemoveUntil(context,
         MaterialPageRoute(builder: (context)=>Home())
         , (route) => false);

   }
  }
}
