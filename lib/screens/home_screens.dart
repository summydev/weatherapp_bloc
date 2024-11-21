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
        padding:  EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment:const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration:const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment:const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF673AB7)),
                ),
              ),
              Align(
                alignment:const AlignmentDirectional(0, -1.2),
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
              ),  Align(alignment: Alignment.center, child: Text('Discipline > Motivation', style: TextStyle(
                color: Colors.white, fontSize: 25
              ),)),
              SizedBox(
                width:MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children :[
                    Text('Lagos-ng-Country',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                    ),),
                    const SizedBox(height: 8,),
                    Text('Good Morning', style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                    Image.asset('assets/img1.png'),
                  ]
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}
