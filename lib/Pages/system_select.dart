import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';
import 'Reusables/standard_page.dart';

class SystemSelectPage extends StatelessWidget {
  SystemSelectPage({Key? key}) : super(key: key);
  final TextStyle textstyle = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w700, //bold
    color: Colors.black,
  );
  final TextStyle textstyleInactive = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w700, //bold
    color: kInactiveColor,
  );

  final double textHeight = 16;
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      crossAxisAlignment: CrossAxisAlignment.start,
      pageBody: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: textHeight * 3,
            ),
            Text(
              'Kindly choose the kind of system you want to design',
              style: textstyle,
            ),
            SizedBox(
              height: textHeight * 2,
            ),
            SystemTypeLink(
              text: "Domestic (Easy)",
              textstyle: textstyle,
            ),
            SizedBox(
              height: textHeight,
            ),
            SystemTypeLink(
              text: "Domestic (Custom)",
              textstyle: textstyleInactive,
            ),
            SizedBox(
              height: textHeight,
            ),
            SystemTypeLink(
              text: "Commercial (Easy)",
              textstyle: textstyleInactive,
            ),
            SizedBox(
              height: textHeight,
            ),
            SystemTypeLink(
              text: "Commercial (Custom)",
              textstyle: textstyleInactive,
            ),
            SizedBox(
              height: textHeight,
            ),
            SystemTypeLink(
              text: "Industrial (Easy)",
              textstyle: textstyleInactive,
            ),
            SizedBox(
              height: textHeight,
            ),
            SystemTypeLink(
              text: "Industrial (Custom)",
              textstyle: textstyleInactive,
            ),
            SizedBox(
              height: textHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class SystemTypeLink extends StatelessWidget {
  const SystemTypeLink({Key? key, required this.textstyle, required this.text})
      : super(key: key);

  final TextStyle textstyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: textstyle,
      ),
    );
  }
}
