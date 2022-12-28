import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class widget_iconMemu extends StatelessWidget {
  // const widget_iconMemu({super.key});

  String text_icon;
  String text_asset;

  widget_iconMemu(this.text_icon, this.text_asset);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 140,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            padding: EdgeInsets.all(3),
            onPressed: () {},
            icon: Image.asset("${text_asset}"),
            // tooltip: "ดนตรีสด",
            iconSize: 56,
            color: Colors.white,
            // alignment: Alignment.topCenter,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${text_icon}",
            textAlign: TextAlign.center,
            style: GoogleFonts.kanit(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
