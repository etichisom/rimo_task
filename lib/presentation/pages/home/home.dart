import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rimo/presentation/component/text/text.dart';
import 'package:rimo/presentation/pages/orders/orders.dart';
import 'package:rimo/provider/auth_provider.dart';
import 'package:rimo/utils/constant/assest.dart';
import 'package:rimo/utils/function/ranfun.dart';
import 'package:rimo/utils/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Completer<GoogleMapController> _controller = Completer();

   final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final CameraPosition _kLake =  const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  late AuthProvider authProvider;
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    authProvider=Provider.of<AuthProvider>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      key: key,
      body:  Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          topbar(context),
          Positioned(
            bottom: 0,
              child: buttomcard()),
          Positioned(
            top:size.height/2 ,
              left: 0,
              child: GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
                },
                  child: Image.asset(AppAsset.package))),
          Positioned(
              top:size.height/1.5 ,
              right: 10,
              child: Image.asset(AppAsset.direction)),
        ],
      ),
    );
  }

 Widget topbar(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SlideInLeft(
            child: GestureDetector(
              onTap: (){
                key.currentState?.openDrawer();
              },
                child: Image.asset(AppAsset.nav)),
          ),
          const Spacer(),
          SlideInDown(
            child: Container(
              height: 40,
              width:120 ,
              decoration: BoxDecoration(
                color:AppColor.browColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Rimotext(
                    Ranfun.naira(authProvider.userDetails!.data.user.availableBalance.toString()),
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fonsize: 18
                ),
              ),
            ),
          ),
          const Spacer(),
          SlideInRight(child: Image.asset(AppAsset.speaker)),
        ],
      ),
    );
 }

Widget  buttomcard() {
    return SlideInUp(
      duration:const Duration(milliseconds: 500),
      child: Container(
        height:168 ,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Rimotext("You are offline"),
                  const SizedBox(height: 5,),
                  Rimotext("Hi "+authProvider.userDetails!.data.user.firstName,
                      fonsize: 21,
                      fontWeight: FontWeight.w600
                  ),

                ],
              ),
              const Spacer(),
              Container(
                height: 45,
                width: 135,
                decoration:  BoxDecoration(
                    color: AppColor.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Rimotext("Go online",
                  fonsize: 16,
                  color: AppColor.splashColor,
                  fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
}
}
