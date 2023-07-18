import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double deviceWidth = mediaQuery.size.width;
    if (deviceWidth < 640) {
      return Container(
        color: kDarkBrownColor,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'img/SolarOnLogoNoBg.png',
                      fit: BoxFit.contain,
                      height: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'SolarOn',
                      style: GoogleFonts.josefinSans(
                        fontSize: 32,
                        fontWeight: FontWeight.w700, //bold
                        color: kBackgroundGoldColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  '© 2022 All rights reserved.',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                Text(
                  'SolarOn is a product of Merlab Motor Works Ltd.',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                Text(
                  'Nairobi, Kenya.',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Apps',
                  style: GoogleFonts.josefinSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700, //bold
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Download Android App',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                Text(
                  'Download iOS App',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Policy',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Privacy policy',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Support',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold, //bold
                    color: kBackgroundGoldColor,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Contact us',
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal, //bold
                    color: kBackgroundGoldColor,
                  ),
                ),
              ],
            )),
      );
    } else if (deviceWidth < 820) {
      return Container(
        color: kDarkBrownColor,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'img/SolarOnLogoNoBg.png',
                              fit: BoxFit.contain,
                              height: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'SolarOn',
                              style: GoogleFonts.josefinSans(
                                fontSize: 32,
                                fontWeight: FontWeight.w700, //bold
                                color: kBackgroundGoldColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          '© 2022 All rights reserved.',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        Text(
                          'SolarOn is a product of Merlab Motor Works Ltd.',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        Text(
                          'Nairobi, Kenya.',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Apps',
                          style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700, //bold
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Download Android App',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        Text(
                          'Download iOS App',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Policy',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Privacy policy',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: kBackgroundGoldColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Support',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold, //bold
                            color: kBackgroundGoldColor,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Contact us',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.normal, //bold
                            color: kBackgroundGoldColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )),
      );
    } else {
      return Container(
        color: kDarkBrownColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'img/SolarOnLogoNoBg.png',
                        fit: BoxFit.contain,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'SolarOn',
                        style: GoogleFonts.josefinSans(
                          fontSize: 32,
                          fontWeight: FontWeight.w700, //bold
                          color: kBackgroundGoldColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    '© 2022 All rights reserved.',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  Text(
                    'SolarOn is a product of Merlab Motor Works Ltd.',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  Text(
                    'Nairobi, Kenya.',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                ],
              ),
              deviceWidth > 990
                  ? SizedBox(
                      width: 64,
                    )
                  : Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Apps',
                    style: GoogleFonts.josefinSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700, //bold
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Download Android App',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  Text(
                    'Download iOS App',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                ],
              ),
              deviceWidth > 990
                  ? SizedBox(
                      width: 64,
                    )
                  : Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Policy',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Privacy policy',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: kBackgroundGoldColor,
                    ),
                  ),
                ],
              ),
              deviceWidth > 990
                  ? SizedBox(
                      width: 64,
                    )
                  : Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Support',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold, //bold
                      color: kBackgroundGoldColor,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Contact us',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal, //bold
                      color: kBackgroundGoldColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
