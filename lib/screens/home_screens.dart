import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF673AB7)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF63AB40)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lagos-ng-Country',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Good Morning',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset('assets/img1.png'),
                        const Center(
                          child: Text(
                            '21*C',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 55,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'THUNDERSTORM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Center(
                          child: Text(
                            'Thursday 21. 14:15pm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        //  const SizedBox(height: 30,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Image.asset(
                                  'assets/img2.png',
                                  scale: 8,
                                ),
                                const SizedBox(width: 5),
                                const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sunrise',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        '5:57 am',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ])
                              ]),
                              Row(children: [
                                Image.asset(
                                  'assets/img2.png',
                                  scale: 8,
                                ),
                                const SizedBox(width: 5),
                                const Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sunrise',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        '5:57 am',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ])
                              ])

                            ],),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.0
                          ),
                          child: Divider(color: Colors.grey)
                        )
                      ]),),
            ],
          ),
        ),
      ),
    );
  }
}
