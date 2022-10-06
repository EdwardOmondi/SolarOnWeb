import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/footer.dart';
import 'package:web/Pages/Reusables/header.dart';
import 'package:web/reusables.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundGoldColor,
      // appBar: Header(),
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Solar System Sizing\n and Quotations',
                              style: GoogleFonts.josefinSans(
                                fontSize: 60,
                                fontWeight: FontWeight.w700, //bold
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 48,
                            ),
                            Text(
                              'Get a solar system that’s tailored \nto your needs',
                              style: GoogleFonts.lato(
                                fontSize: 32,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 64,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                fixedSize: Size(212, 80),
                                primary: kGoldColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(41), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Design',
                                style: GoogleFonts.josefinSans(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700, //bold
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'img/house1.png',
                          fit: BoxFit.contain,
                          height: MediaQuery.of(context).size.height - 100,
                        ),
                      ],
                    ),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
