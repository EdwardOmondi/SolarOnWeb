import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  late Color designButtonColor;
  String currentRoute = Get.currentRoute;
  TextStyle inactivePage = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w700, //bold
    // color: Colors.black,
  );
  TextStyle activePage = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w700, //bold
    // color: Colors.black,
    decorationColor: kGoldColor,
    decorationThickness: 4,
    shadows: [Shadow(color: Colors.black, offset: Offset(0, -5))],
    color: Colors.transparent,
    decoration: TextDecoration.underline,
  );
  late TextStyle homeTextStyle;
  late TextStyle contactUsTextStyle;
  late TextStyle designTextStyle;
  @override
  Widget build(BuildContext context) {
    switch (currentRoute) {
      case "/":
        {
          homeTextStyle = activePage;
          contactUsTextStyle = inactivePage;
          designTextStyle = inactivePage;
        }
        break;
      case "/Index":
        {
          homeTextStyle = activePage;
          contactUsTextStyle = inactivePage;
          designTextStyle = inactivePage;
        }
        break;

      case "/design":
        {
          homeTextStyle = inactivePage;
          contactUsTextStyle = inactivePage;
          designTextStyle = activePage;
        }
        break;
      case "/contact":
        {
          designButtonColor = kBackgroundGoldColor;
          homeTextStyle = inactivePage;
          contactUsTextStyle = activePage;
          designTextStyle = inactivePage;
        }
        break;

      default:
        {
          designButtonColor = kGoldColor;
          homeTextStyle = inactivePage;
          contactUsTextStyle = inactivePage;
          designTextStyle = inactivePage;
        }
        break;
    }

    return Padding(
      padding:
          const EdgeInsets.only(left: 50.0, right: 50, top: 40, bottom: 20),
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
          TextButton(
            onPressed: () {
              Get.toNamed("/");
            },
            child: Text(
              'SolarOn',
              style: GoogleFonts.josefinSans(
                fontSize: 32,
                fontWeight: FontWeight.w700, //bold
                color: Colors.black,
              ),
            ),
          ),
          Expanded(child: Container()),
          HeaderTab(
            title: "Home",
            textStyle: homeTextStyle,
            onPressed: () {
              Get.toNamed("/");
            },
          ),
          HeaderTab(
            textStyle: contactUsTextStyle,
            title: "Contact Us",
            onPressed: () {
              Get.toNamed("/contact");
            },
          ),
          HeaderTab(
            textStyle: designTextStyle,
            title: "Design",
            onPressed: () {
              // Get.to(SystemSelectPage());
              Get.toNamed("/design");
            },
          ),
        ],
      ),
    );
  }
}

class HeaderTab extends StatelessWidget {
  const HeaderTab(
      {Key? key,
      required this.textStyle,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final TextStyle textStyle;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return kGoldColor;
              }
              return Colors.black;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return kBackgroundGoldColor;
              }
              return kBackgroundGoldColor;
            },
          ),
        ),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
