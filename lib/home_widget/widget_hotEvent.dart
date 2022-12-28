import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widgethotEvent extends StatelessWidget {
  // const widgethotEvent({super.key});
  String image_assets;
  String title_hotEvent;
  String subtitle_hotEvent;
  String subtitle_location;
  String rate_hotEvent;
  String discountedPrice_hotEvent;

  widgethotEvent(
      this.image_assets,
      this.title_hotEvent,
      this.rate_hotEvent,
      this.discountedPrice_hotEvent,
      this.subtitle_hotEvent,
      this.subtitle_location);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 341,
      decoration: const BoxDecoration(
        image: DecorationImage(
          // fit: BoxFit.fill,
          image: AssetImage("image/hotevent/Framehotevent.png"),
        ),
      ),
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    image_assets,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    left: 4,
                    top: 5,
                    child: Container(
                      width: 66,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xFFFB9905),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('image/hotevent/Firehotevent.png'),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            'HOT',
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 76,
                    top: 5,
                    child: Container(
                      width: 66,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xFFFB054F),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('image/hotevent/receipt-disscount.png'),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            '40%',
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Opacity(opacity: opacity)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            width: 52,
                            height: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 52,
                          height: 92,
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                '24',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                              ),
                              Text(
                                '08',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFFD1D1D1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                              ),
                              Text(
                                '2020',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFFD1D1D1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 190,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title_hotEvent,
                        style: GoogleFonts.kanit(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '฿ ',
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: const Color(0xFFF6AF3E),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            rate_hotEvent,
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: const Color(0xFFF6AF3E),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            discountedPrice_hotEvent,
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              // textStyle: ,
                              color: Color(0xFFFB054F),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            subtitle_hotEvent,
                            style: GoogleFonts.kanit(
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("image/location-tick.png"),
                          const SizedBox(width: 5),
                          Text(
                            subtitle_location,
                            style: GoogleFonts.kanit(
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
