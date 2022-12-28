import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widgetNewsAndActivities extends StatelessWidget {
  // const widgetNewsAndActivities({super.key});
  String image_assets;
  String title_;
  String subtitle_;

  widgetNewsAndActivities(this.image_assets, this.title_, this.subtitle_,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: 396,
          height: 112,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Color(0xFF202427),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(image_assets),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  // mainAxisAlignment: ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 213,
                      child: Text(
                        title_,
                        // maxLines: 2,
                        textWidthBasis: TextWidthBasis.longestLine,
                        // textAlign: TextAlign.start,
                        style: GoogleFonts.kanit(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 203,
                      child: Text(
                        subtitle_,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        textWidthBasis: TextWidthBasis.longestLine,
                        // textAlign: TextAlign.start,
                        style: GoogleFonts.kanit(
                          fontStyle: FontStyle.normal,
                          color: Color(0xFFB4A69A),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
