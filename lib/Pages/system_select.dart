import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/reusables.dart';
import 'Reusables/standard_page.dart';

class SystemSelectPage extends GetView<SystemSelectPageController> {
  SystemSelectPage({Key? key}) : super(key: key);

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
      pageBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: textHeight * 3,
          ),
          Text(
            'Kindly choose the kind of system you want to design',
            style: kH2TextStyle,
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
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Domestic (Easy)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                  SystemTypeLink(
                    text: "Domestic (Custom)",
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Domestic (Custom)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                  SystemTypeLink(
                    text: "Commercial (Easy)",
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Commercial (Easy)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                  SystemTypeLink(
                    text: "Commercial (Custom)",
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Commercial (Custom)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                  SystemTypeLink(
                    text: "Industrial (Easy)",
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Industrial (Easy)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                  SystemTypeLink(
                    text: "Industrial (Custom)",
                    textstyle: kH2TextStyle,
                    onPressed: () {
                      controller.changeVisibility("Industrial (Custom)");
                    },
                  ),
                  SizedBox(
                    height: textHeight,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Obx(
                () => Visibility(
                  visible: controller.visibility.value,
                  child: Container(
                    padding: const EdgeInsets.all(32.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: kGoldColor,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.data.value,
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
                          onPressed: () {
                            String selected = controller.selectedPage.value;
                            if (selected.endsWith("asy")) {
                              Get.toNamed("/easy");
                            }
                            if (selected.endsWith("ustom")) {
                              Get.snackbar("$selected",
                                  "It is in production and will be coming soon :)");
                            }
                          },
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SystemSelectPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemSelectPageController());
  }
}

class SystemTypeLink extends StatelessWidget {
  const SystemTypeLink({
    Key? key,
    required this.textstyle,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final TextStyle textstyle;
  final String text;
  final Null Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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

class SystemSelectPageController extends GetxController {
  var visibility = false.obs;
  var data = "".obs;
  var initialValue = "";
  var currentValue = "";
  var selectedPage = "".obs;

  changeVisibility(String selection) {
    currentValue = selection;
    if (visibility.value && initialValue != currentValue) {
      getMessage(selection);
      initialValue = selection;
    } else {
      visibility.value = !visibility.value;
      getMessage(selection);
    }
  }

  getMessage(String selection) {
    switch (selection) {
      case "Domestic (Easy)":
        {
          selectedPage.value = "Domestic Easy";
          data.value = "For HOME use only. (e.g. Individual homes "
              "and houses)\nThis is for those who have very "
              "limited experience designing solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      case "Domestic (Custom)":
        {
          selectedPage.value = "Domestic Custom";
          data.value = "For HOME use only. (e.g. Individual homes "
              "and houses)\nThis is for those who have proper "
              "experience designing solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      case "Commercial (Easy)":
        {
          selectedPage.value = "Commercial Easy";
          data.value = "For COMMERCIAL use only. (e.g. Office "
              "buildings)\nThis is for those who have very "
              "limited experience with solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      case "Commercial (Custom)":
        {
          selectedPage.value = "Commercial Custom";
          data.value = "For COMMERCIAL use only. (e.g. Office "
              "buildings)\nThis is for those who have proper "
              "experience designing solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      case "Industrial (Easy)":
        {
          selectedPage.value = "Industrial Easy";
          data.value = "For INDUSTRIAL use only. (e.g. Factories and "
              "plants)\nThis is for those who have very "
              "limited experience with solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      case "Industrial (Custom)":
        {
          selectedPage.value = "Industrial Custom";
          data.value = "For INDUSTRIAL use only. (e.g. Factories and "
              "plants)\nThis is for those who have proper "
              "experience designing solar systems.\nOnly key in "
              "the electrical items you want to be powered by the "
              "solar system. ";
        }
        break;
      default:
        {
          data.value = "Please select a category to start designing";
        }
        break;
    }
  }
}
