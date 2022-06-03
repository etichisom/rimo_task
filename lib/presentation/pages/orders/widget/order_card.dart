import 'package:flutter/material.dart';
import 'package:rimo/presentation/component/text/text.dart';
import 'package:rimo/utils/function/ranfun.dart';
import 'package:rimo/utils/theme/colors.dart';

class OrderCard extends StatelessWidget {
 Color color;

 OrderCard({
  this.color =AppColor.newOrderColor
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Container(
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color
         ),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
            Row(
              children: [
                Rimotext(Ranfun.naira("2800"),fonsize: 18),
                const Spacer(),
                Rimotext("5.3km",fonsize: 16,color:const Color(0xff828282)),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 10,),
             row("Ojota New Garage, Ikorodu Road",AppColor.normalBlue),
              const SizedBox(height: 10,),
              row("House 8, ikate lekki, lagos island",AppColor.normalGreen),
             const SizedBox(height: 10,)
           ],
       ),
         ),
      ),
        const SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             button(
               ontap:(){},
               text:"Accept",
                color:const Color(0xff145B14)

             ),
             button(
                 ontap:(){},
                 text:"Decline",
                 color:const Color(0xffD03535)
             )
           ],
         ),
   ],
      ),
    );
  }

 Widget row(String s, Color boxcolor) {
    return Row(
      children: [
        Container(
         height: 15,
         width: 15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: boxcolor
          ),
        ),
      const  SizedBox(width: 10,),
        Expanded(child: Rimotext(s,fonsize: 16,fontWeight:FontWeight.w400 ))
      ],
    );
 }

 Widget button({
   required Function() ontap,
   required String text,
   required Color color}) {

    return Container(
      height:45 ,
      width:135 ,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color.withOpacity(0.2),
      ),
      child: Center(child: Rimotext(text,color: color,fonsize: 16,fontWeight: FontWeight.w700)),
    );
 }
}
