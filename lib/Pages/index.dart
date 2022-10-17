import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Reusables/standard_page.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      crossAxisAlignment: CrossAxisAlignment.center,
      pageBody: Row(
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
                  // fixedSize: Size(212, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(101), // <-- Radius
                  ),
                ),
                onPressed: () {
                  Get.toNamed("/design");
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    'Design',
                    style: GoogleFonts.josefinSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w700, //bold
                      color: Colors.black,
                    ),
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
    );
  }
}
