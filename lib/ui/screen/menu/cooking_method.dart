import 'package:cook/constant.dart';
import 'package:cook/ui/widget/tologe.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:clip_shadow/clip_shadow.dart';

class IndividualItem extends StatefulWidget {
  @override
  State<IndividualItem> createState() => _IndividualItemState();
}

class _IndividualItemState extends State<IndividualItem> {
  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.grey;
    int _toggleValue = 0;

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/food1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.4],
                            colors: [
                              Colors.black.withOpacity(0.9),
                              Colors.black.withOpacity(0.4),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                        SizedBox(
                          height: 800,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Container(
                                  height: 700,
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 30),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text("rice".tr(),
                                                style: screen),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            child: Column(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/images/star_filled.png"),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/star_filled.png"),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/star_filled.png"),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/star_filled.png"),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Image.asset(
                                                        "assets/images/star_filled.png"),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "4 Star Ratings",
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                   Expanded(child: TabBarDemo()),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: ClipShadow(
                                    clipper: CustomTriangle(),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFB6B7B7),
                                        offset: Offset(0, 5),
                                        blurRadius: 5,
                                      ),
                                    ],
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      color: Colors.white,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: _iconColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _iconColor = Colors.orange;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: CustomNavBar(),
          // ),
        ],
      ),
    );
  }
}

class CustomTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlpoint = Offset(size.width * 0, size.height * 0.5);
    Offset endpoint = Offset(size.width * 0.2, size.height * 0.85);
    Offset controlpoint2 = Offset(size.width * 0.33, size.height);
    Offset endpoint2 = Offset(size.width * 0.6, size.height * 0.9);
    Offset controlpoint3 = Offset(size.width * 1.4, size.height * 0.5);
    Offset endpoint3 = Offset(size.width * 0.6, size.height * 0.1);
    Offset controlpoint4 = Offset(size.width * 0.33, size.height * 0);
    Offset endpoint4 = Offset(size.width * 0.2, size.height * 0.15);

    Path path = new Path()
      ..moveTo(size.width * 0.2, size.height * 0.15)
      ..quadraticBezierTo(
        controlpoint.dx,
        controlpoint.dy,
        endpoint.dx,
        endpoint.dy,
      )
      ..quadraticBezierTo(
        controlpoint2.dx,
        controlpoint2.dy,
        endpoint2.dx,
        endpoint2.dy,
      )
      ..quadraticBezierTo(
        controlpoint3.dx,
        controlpoint3.dy,
        endpoint3.dx,
        endpoint3.dy,
      )
      ..quadraticBezierTo(
        controlpoint4.dx,
        controlpoint4.dy,
        endpoint4.dx,
        endpoint4.dy,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
