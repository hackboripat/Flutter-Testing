import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class buildImage extends StatelessWidget {
  // const buildImage({super.key});
  String urlImage;
  int index;
  int len;

  buildImage(this.urlImage, this.index, this.len);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: AlignmentDirectional(0.9, -0.9),
            child: Container(
                // margin: const EdgeInsets.all(90.0),
                width: 34,
                height: 17,
                // margin: EdgeInsets.all(10),

                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xD9D9D933),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "${index + 1}" + "/" + "${len}",
                        style: GoogleFonts.inter(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
