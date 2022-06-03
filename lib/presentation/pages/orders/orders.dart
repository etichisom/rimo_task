import 'package:flutter/material.dart';
import 'package:rimo/presentation/component/appbar/appbar.dart';
import 'package:rimo/presentation/component/text/text.dart';
import 'package:rimo/presentation/pages/orders/widget/active_order_card.dart';
import 'package:rimo/presentation/pages/orders/widget/order_card.dart';

class Orders extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Rimobar(context,title: 'MY ORDERS'),
      body:Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Rimotext('New Order',fonsize: 16,fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: ListView.builder(
                    itemCount:2 ,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                       return OrderCard();
                    }
                ),
              ),
              const SizedBox(height: 20,),
              divider(),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Rimotext('Active Order',fonsize: 16,fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: ListView.builder(
                    itemCount:1 ,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return ActiveOrderCard();
                    }
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

 Widget divider() {
    return Container(
      width: double.maxFinite,
      height: 1.5,
      color:const Color(0xffEBEBEB) ,
    );
 }
}
