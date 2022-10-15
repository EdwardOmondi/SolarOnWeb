import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/standard_page.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        crossAxisAlignment: CrossAxisAlignment.start,
        pageBody: SizedBox(
          height: Get.height - 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16 * 3,
              ),
              Text(
                'Sorry. Page not found.',
                style: GoogleFonts.josefinSans(
                  fontSize: 32,
                  height: 2,
                  fontWeight: FontWeight.w700, //bold
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}