import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_top10 extends StatelessWidget {
  // const widget_top10({super.key});
  String name_location;
  String detaails_location;
  String urlImage;
  int index;
  int len;

  widget_top10(this.name_location, this.detaails_location, this.urlImage,
      this.index, this.len,
      {super.key});

  @override
  Widget build(BuildContext context) {
    double widthContainer = 250;

    if (index + 1 < 10) {
      widthContainer = 209;
    } else {
      widthContainer = 260;
    }

    return SizedBox(
      // alignment: AlignmentDirectional.bottomStart,
      // color: Colors.red,
      // width: double.infinity,
      width: widthContainer,
      height: 223,
      // height: 50,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            width: 165,
            height: 200,
            // alignment: Alignment(0, 1),
            decoration: BoxDecoration(
              color: const Color(0xFF202427),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    // fit: StackFit.passthrough,
                    children: [
                      Image.asset(
                        urlImage,
                        width: double.infinity,
                        // fit: BoxFit.none,
                      ),
                      Positioned(
                        top: -10,
                        right: 10,
                        child: Container(
                          alignment: const Alignment(0, 0),
                          width: 48,
                          height: 53,
                          // alignment: AlignmentDirectional(1, -1),

                          decoration: BoxDecoration(
                              color: const Color(0xFFFB054F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  "สูงสุด",
                                  maxLines: 2,
                                  textWidthBasis: TextWidthBasis.longestLine,
                                  // textAlign: TextAlign.start,
                                  style: GoogleFonts.kanit(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "40%",
                                  maxLines: 2,
                                  textWidthBasis: TextWidthBasis.longestLine,
                                  // textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      SizedBox(
                        width: 120,
                        // padding: EdgeInsets.all(50),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name_location,
                                // textAlign: TextAlign.start,
                                style: GoogleFonts.kanit(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset("image/location-tick.png"),
                                  const SizedBox(width: 5),
                                  Text(
                                    "ทองหล่อ, กรุงเทพ...",
                                    style: GoogleFonts.kanit(
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            // width: 70,
            // left: -13,

            right: 144,
            child: Text(
              "${index + 1}",
              // textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                fontStyle: FontStyle.normal,
                color: Colors.yellow[800],
                fontSize: 120,
                fontWeight: FontWeight.bold,
                letterSpacing: -15,
                // height: 0.5,
                // letterSpacing: 0.1
                // wordSpacing: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
