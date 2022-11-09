import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBlackColor = Colors.black;
const Color kDarkBrownColor = Color(0xff231a00);
const Color kBackgroundGoldColor = Color(0xfffff6d9);
const Color kGoldColor = Color(0xfff5b700);
const Color kInactiveColor = Color(0XFF8C8369);

final TextStyle kH2TextStyle = GoogleFonts.josefinSans(
  fontSize: 32,
  fontWeight: FontWeight.w700, //bold
  color: kBlackColor,
);

final kParagraphStyle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400, //bold
  color: kBlackColor,
);
final kNormalTextStyle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

class Appliance {
  final String item;
  final int qty;
  final double powerRating;
  final double time;

  Appliance({
    required this.item,
    required this.qty,
    required this.powerRating,
    required this.time,
  });

  @override
  String toString() {
    return "(item: $item, qty: $qty, "
        "power: $powerRating, time: $time)";
  }
}
