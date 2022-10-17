import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';
import 'Reusables/standard_page.dart';

class SystemSelectPage extends StatelessWidget {
  SystemSelectPage({Key? key}) : super(key: key);
  final TextStyle textstyle = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w700, //bold
    color: kBlackColor,
  );
  final TextStyle textstyleInactive = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w700, //bold
    color: kInactiveColor,
  );

  final double textHeight = 25;
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SystemTypeLink(
                      text: "Domestic (Easy)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                    SystemTypeLink(
                      text: "Domestic (Custom)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                    SystemTypeLink(
                      text: "Commercial (Easy)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                    SystemTypeLink(
                      text: "Commercial (Custom)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                    SystemTypeLink(
                      text: "Industrial (Easy)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                    SystemTypeLink(
                      text: "Industrial (Custom)",
                      textstyle: textstyle,
                    ),
                    SizedBox(
                      height: textHeight,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                //TODO: MAKE VISIBILITY CHANGE DYNAMICALLY ON BUTTON CLICK
                Visibility(
                  child: Container(
                    padding: const EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // color: Colors.yellow[100],
                      border: Border.all(
                        color: kGoldColor,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "For HOME use only. (e.g. Individual "
                          "homes and houses)\nThis is for those who have very "
                          "limited experience with solar systems.\nOnly key in "
                          "the electrical items you want to be powered by the "
                          "solar system. ",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w500, //bold
                            color: kBlackColor,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            // fixedSize: Size(154, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(41), // <-- Radius
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Start',
                              style: GoogleFonts.josefinSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w700, //bold
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
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
      child: Row(
        children: [
          Text(
            text,
            style: textstyle,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: kBlackColor,
          ),
        ],
      ),
    );
  }
}
