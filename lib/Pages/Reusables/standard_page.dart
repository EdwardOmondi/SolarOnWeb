import 'package:flutter/material.dart';
import 'package:web/Pages/Reusables/footer.dart';
import 'package:web/Pages/Reusables/header.dart';
import 'package:web/reusables.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardPage extends StatelessWidget {
  final Widget pageBody;
  final CrossAxisAlignment crossAxisAlignment;
  const StandardPage({
    Key? key,
    required this.crossAxisAlignment,
    required this.pageBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: displayDrawer(context),
      backgroundColor: kBackgroundGoldColor,
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height - 100,
                        child: pageBody),
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  displayDrawer(BuildContext context) {
    late TextStyle homeTextStyle;
    late TextStyle contactUsTextStyle;
    late TextStyle designTextStyle;
    late Color designButtonColor;

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
    switch (Get.currentRoute) {
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
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double deviceWidth = mediaQuery.size.width;

    if (deviceWidth < 768) {
      return Drawer(
        child: ListView(
          children: [
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
                Get.toNamed("/design");
              },
            ),
          ],
        ),
      );
    } else {
      return null;
    }
  }
}
