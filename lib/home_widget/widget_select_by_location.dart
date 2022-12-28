import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class widgetselectlocation extends StatelessWidget {
  // widgetselectlocation({super.key});
  String image_assets;
  String title_location;
  String subtitle_location;

  widgetselectlocation(
      this.image_assets, this.title_location, this.subtitle_location,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 292,
        height: 216,
        child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          child: Column(
            // mainAxisAlignment: M,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image_assets),
              Text(
                title_location,
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subtitle_location,
                style: GoogleFonts.kanit(
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF9B9B9B),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          onPressed: () {},
        ));
  }
}
