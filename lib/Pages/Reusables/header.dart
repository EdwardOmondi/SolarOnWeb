import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
      child: Row(
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
              color: Colors.black,
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) return kGoldColor;
                  return kBackgroundGoldColor;
                }),
              ),
              child: Text(
                'Home',
                style: GoogleFonts.josefinSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700, //bold
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) return kGoldColor;
                  return kBackgroundGoldColor;
                }),
              ),
              child: Text(
                'Contact Us',
                style: GoogleFonts.josefinSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700, //bold
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              fixedSize: Size(106, 40),
              primary: kGoldColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21), // <-- Radius
              ),
            ),
            onPressed: () {},
            child: Text(
              'Design',
              style: GoogleFonts.josefinSans(
                fontSize: 16,
                fontWeight: FontWeight.w700, //bold
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
    // return AppBar(
    //   backgroundColor: kBackgroundGoldColor,
    //   elevation: 0,
    //   title: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Image.asset(
    //         'img/SolarOnLogoNoBg.png',
    //         fit: BoxFit.contain,
    //         height: 40,
    //       ),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       Text(
    //         'SolarOn',
    //         style: GoogleFonts.josefinSans(
    //           fontSize: 32,
    //           fontWeight: FontWeight.w700, //bold
    //           color: Colors.black,
    //         ),
    //       ),
    //     ],
    //   ),
    //   actions: [
    //     Column(
    //       children: [
    //         Expanded(child: Container()),
    //         ElevatedButton(
    //           style: ElevatedButton.styleFrom(
    //             primary: kBackgroundGoldColor,
    //             shadowColor: kGoldColor,
    //             fixedSize: Size(90, 40),
    //             elevation: 0,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(21), // <-- Radius
    //             ),
    //           ),
    //           onPressed: () {},
    //           child: Text(
    //             'Home',
    //             style: GoogleFonts.josefinSans(
    //               fontSize: 16,
    //               fontWeight: FontWeight.w700, //bold
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //         Expanded(child: Container()),
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Expanded(child: Container()),
    //         ElevatedButton(
    //           style: ElevatedButton.styleFrom(
    //             primary: kBackgroundGoldColor,
    //             shadowColor: kGoldColor,
    //             fixedSize: Size(130, 40),
    //             elevation: 0,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(21), // <-- Radius
    //             ),
    //           ),
    //           onPressed: () {},
    //           child: Text(
    //             'Contact Us',
    //             style: GoogleFonts.josefinSans(
    //               fontSize: 16,
    //               fontWeight: FontWeight.w700, //bold
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //         Expanded(child: Container()),
    //       ],
    //     ),
    //     Column(
    //       children: [
    //         Expanded(child: Container()),
    //         ElevatedButton(
    //           style: ElevatedButton.styleFrom(
    //             elevation: 0,
    //             fixedSize: Size(106, 40),
    //             primary: kGoldColor,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(21), // <-- Radius
    //             ),
    //           ),
    //           onPressed: () {},
    //           child: Text(
    //             'Design',
    //             style: GoogleFonts.josefinSans(
    //               fontSize: 16,
    //               fontWeight: FontWeight.w700, //bold
    //               color: Colors.black,
    //             ),
    //           ),
    //         ),
    //         Expanded(child: Container()),
    //       ],
    //     ),
    //   ],
    // );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
