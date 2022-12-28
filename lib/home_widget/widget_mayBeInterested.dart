import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_mayBeInterested extends StatelessWidget {
  // const MyWidget({super.key});
  String image_assets;
  String image_store;
  String title_mayBeInterested;
  String score_mayBeInterested;
  String subtitle_mayBeInterested;
  String rate_mayBeInterested;

  widget_mayBeInterested(
      this.image_assets,
      this.image_store,
      this.title_mayBeInterested,
      this.subtitle_mayBeInterested,
      this.score_mayBeInterested,
      this.rate_mayBeInterested);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 396,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF202427),
        ),
        child: TextButton(
            style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            onPressed: () {},
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(image_assets),
                        Positioned(
                            left: 10, top: 0, child: Image.asset(image_store))
                      ],
                    )
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Container(
                      width: 72,
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: const Color(0xFFFB054F),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          const SizedBox(width: 3),
                          Text(
                            "40%",
                            maxLines: 2,
                            textWidthBasis: TextWidthBasis.longestLine,
                            // textAlign: TextAlign.start,
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 17),
                    SizedBox(
                      // width: 150,
                      child: Text(
                        title_mayBeInterested,
                        style: GoogleFonts.kanit(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                            "image/famous Shop/location-tickFamousShop.png"),
                        const SizedBox(width: 5),
                        SizedBox(
                          child: Text(
                            subtitle_mayBeInterested,
                            style: GoogleFonts.kanit(
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset("image/famous Shop/starFamousShop.png"),
                        const SizedBox(width: 5),
                        Text(
                          score_mayBeInterested,
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
                      height: 5,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'เริ่มต้น',
                          style: GoogleFonts.kanit(
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
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
                          rate_mayBeInterested,
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.normal,
                            color: Color(0xFFF6AF3E),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 11),
                    Container(
                      width: 124,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Color(0xFF121416)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFFF6AF3E),
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                            // height: 20,
                          ),
                          Text(
                            'ซื้อวอเชอร์',
                            style: GoogleFonts.inter(
                              fontStyle: FontStyle.normal,
                              color: const Color(0xFFF6AF3E),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
