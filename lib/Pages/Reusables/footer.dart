import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: kDarkBrownColor,
      child: Column(
        children: [
          Text(
            "Footer",
            style: GoogleFonts.josefinSans(
              fontSize: 16,
              fontWeight: FontWeight.w700, //bold
              color: kBackgroundGoldColor,
            ),
          ),
        ],
      ),
    );
  }
}
