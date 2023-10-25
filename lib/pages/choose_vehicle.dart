import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../style/textstyle.dart';

class ChooseVehicle extends StatefulWidget {
  const ChooseVehicle({super.key});

  @override
  State<ChooseVehicle> createState() => _ChooseVehicleState();
}

class _ChooseVehicleState extends State<ChooseVehicle> {
  // final Completer<GoogleMapController> _controller =
  //     Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 1.2 / 2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/map.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(143, 0, 255, 1),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset('assets/images/th.png'),
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('assets/images/Profile.png'),
                        ),
                      ],
                    ),
                  )),
              Container(
                padding: EdgeInsets.all(13),
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(143, 0, 255, 1),
                            child: Icon(Icons.circle,
                                size: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Skate Park',
                            style: appTextStyle(
                                fw: FontWeight.w500,
                                size: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 2),
                      child: SizedBox(
                        height: 18,
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                ),
                                child: ElevatedButton.icon(
                                  style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(23, 23))),
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  label: Text(
                                    'Add',
                                    style: appTextStyle(
                                        fw: FontWeight.w500,
                                        size: 14,
                                        color: Colors.black45),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(143, 0, 255, 1),
                            child: Icon(Icons.location_on,
                                size: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Home',
                            style: appTextStyle(
                                fw: FontWeight.w500,
                                size: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 2)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(23),
                  topLeft: Radius.circular(23),
                )),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose your ride',
                        style: appTextStyle(
                            fw: FontWeight.w500, size: 14, color: Colors.black),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_ios,
                            size: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 36),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: appTextStyle(
                              fw: FontWeight.w400,
                              size: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * 1.5 / 2,
        //   width: MediaQuery.of(context).size.width,
        //   child: Stack(
        //     children: [
        //       Image.asset(
        //         'assets/images/map.png',
        //         fit: BoxFit.cover,
        //         width: MediaQuery.of(context).size.width,
        //       ),

        //       // GoogleMap(
        //       //   mapType: MapType.hybrid,
        //       //   initialCameraPosition: _kGooglePlex,
        //       //   onMapCreated: (GoogleMapController controller) {
        //       //     _controller.complete(controller);
        //       //   },
        //       // ),
        //     ],
        //   ),
        // )
      ]),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: const Text('To the lake!'),
      //   icon: const Icon(Icons.directions_boat),
      // ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
