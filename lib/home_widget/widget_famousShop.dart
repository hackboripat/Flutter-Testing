import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_FamousShop extends StatelessWidget {
  // const MyWidget({super.key});
  String image_assets;
  String title_FamousShop;
  String score_FamousShop;
  String subtitle_FamousShop;
  String rate_FamousShop;

  widget_FamousShop(this.image_assets, this.title_FamousShop,
      this.subtitle_FamousShop, this.score_FamousShop, this.rate_FamousShop,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 188,
        height: 208,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF202427),
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(image_assets),
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
              // const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title_FamousShop,
                      style: GoogleFonts.kanit(
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                            "image/famous Shop/location-tickFamousShop.png"),
                        const SizedBox(width: 5),
                        Text(
                          subtitle_FamousShop,
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset("image/famous Shop/starFamousShop.png"),
                        const SizedBox(width: 5),
                        Text(
                          score_FamousShop,
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'เริ่มต้น',
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
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
                          rate_FamousShop,
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.normal,
                            color: Color(0xFFF6AF3E),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
