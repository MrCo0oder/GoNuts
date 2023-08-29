import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // DioBuilder builder = DioBuilder
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF7074)),
          useMaterial3: false,
        ),
        home: const OnBoardingPageState(),
      );
    });
  }
}

class OnBoardingPageState extends StatelessWidget {
  const OnBoardingPageState({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFED8DF),
      body: Stack(
        children: [
          Container(
            alignment: AlignmentDirectional.topEnd,
            child: Image.asset(
              "images/donuts.png",
              // height: 270,
              // width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: double.infinity,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Gonuts\nwith\nDonuts',
                    style: TextStyle(
                        color: Color(0xFFFF7074),
                        fontWeight: FontWeight.w700,
                        fontSize: 54,
                        shadows: [
                          Shadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Color.fromRGBO(0, 0, 0, 0.25)),
                        ]),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const Text(
                    'Gonuts with Donuts is a Sri Lanka dedicated food outlets for specialize manufacturing of Donuts in Colombo, Sri Lanka.',
                    style: TextStyle(
                      color: Color(0xFFFF9494),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textWidthBasis: TextWidthBasis.longestLine,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(40.0, 46, 40.0, 46),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70,
                        shadowColor: Colors.black26,
                        foregroundColor: const Color(0x5FFED8DF),
                        enableFeedback: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        minimumSize: const Size(348, 67),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // body: Container(
      //   height: double.infinity,
      //   color: ,
      //   child: SingleChildScrollView(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Flexible(
      //           child: Image.asset(
      //             "images/donuts.png",
      //             // height: 270,
      //             fit: BoxFit.fitWidth,
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.symmetric(
      //             horizontal: 40,
      //           ),
      //           child: const Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'Gonuts\nwith\nDonuts',
      //                 style: TextStyle(
      //                     color: Color(0xFFFF7074),
      //                     fontWeight: FontWeight.w700,
      //                     fontSize: 54,
      //                     shadows: [
      //                       Shadow(
      //                           offset: Offset(0, 4),
      //                           blurRadius: 4,
      //                           color: Color.fromRGBO(0, 0, 0, 0.25)),
      //                     ]),
      //                 textAlign: TextAlign.start,
      //               ),

      //         Container(
      //             margin: const EdgeInsets.fromLTRB(40.0, 46, 40.0, 46),
      //             child: ElevatedButton(
      //               onPressed: () {
      //                 Navigator.pushReplacement(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const HomePage()),
      //                 );
      //               },
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.white70,
      //                 shadowColor: Colors.black26,
      //                 foregroundColor: const Color(0x5FFED8DF),
      //                 enableFeedback: true,
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(50)),
      //                 minimumSize: const Size(348, 67),
      //                 elevation: 0,
      //               ),
      //               child: const Text(
      //                 'Get Started',
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w600,
      //                   fontSize: 20,
      //                 ),
      //               ),
      //             ))
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
