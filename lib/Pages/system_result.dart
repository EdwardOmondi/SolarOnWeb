import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/standard_page.dart';
import 'package:web/reusables.dart';
import 'package:intl/intl.dart';

class SystemResultsPage extends GetView<SystemResultPageController> {
  SystemResultsPage({super.key});
  late double nob; // No. of Batteries	2.06

  @override
  Widget build(BuildContext context) {
    double msy = 4.196; // minimum solar yield
    double be = 0.85; // battery efficiency
    double cce = 0.96; // charge controller efficiency
    double ie = 0.96; // inverter efficiency
    double dbp = 0.95; // dirt buildup on panels
    double pw = 400; // panel wattage
    // double kwh = 18000;
    // double watts = 1500;
    int sv; // system voltage
    double da = 0.5; // Days of autonomy	0.5
    double bdf = 0.1; // Battery derating factor	10%
    double dod = 0.5; // Battery DOD	50%
    double il = 0.96; // Inverter Losses	96%
    double bbc; // Battery bank capacity	206.25
    double bs = 100; // Battery size (Ah)	100
    double panelsNo;
    double inverterNo;
    int inverterSize;
    // panelsNo = kwh / (msy * be * cce * ie * dbp) / pw;

    if (Get.arguments["watts"] <= 1000) {
      sv = 12;
      pw = 300;
      nob =
          (Get.arguments["wattHours"] * da * (1 + bdf) / (dod * il * sv)) / bs;
      inverterNo = (Get.arguments["watts"] / 1000);
    } else if (Get.arguments["watts"] > 1000 &&
        Get.arguments["watts"] <= 2400) {
      sv = 24;
      nob =
          (Get.arguments["wattHours"] * da * (1 + bdf) / (dod * il * sv)) / bs;
      if (nob % 2 != 0) {
        nob += 1;
      }
      inverterNo = (Get.arguments["watts"] / 2400);
    } else {
      sv = 48;
      nob =
          (Get.arguments["wattHours"] * da * (1 + bdf) / (dod * il * sv)) / bs;

      while (nob.ceil() % 4 != 0) {
        nob += 1;
      }
      inverterNo = (Get.arguments["watts"] / 5000);
    }
    panelsNo = Get.arguments["wattHours"] / (msy * be * cce * ie * dbp) / pw;
    final formatCurrency =
        new NumberFormat.currency(locale: "en_US", symbol: "");

    return StandardPage(
      crossAxisAlignment: CrossAxisAlignment.start,
      pageBody: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
              ),
              Text(
                "The results",
                style: GoogleFonts.josefinSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Item(
                title: 'Inverter:',
                size:
                    "${Get.arguments["watts"] * 1.5 < 5000 ? (Get.arguments["watts"] * 1.5 / 1000).ceil() : 5} kW ${sv}V Hybrid",
                number: "${inverterNo.ceil().toString()} pc",
              ),
              Item(
                title: 'Panels:',
                size: "${pw.toString()} Watts",
                number: "${panelsNo.ceil().toString()} pcs",
              ),
              Item(
                  size: "12V ${bs.toString()} Ah",
                  number: "${nob.ceil().toString()} pcs",
                  title: "Batteries"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () {
                  var text = Text(
                    "Panels: Kshs. ${formatCurrency.format(controller.panelPrice.value)}\n"
                    "Inverters: Kshs. ${formatCurrency.format(controller.inverterPrice.value)}\n"
                    "Batteries: Kshs. ${formatCurrency.format(controller.batteryPrice.value)}\n"
                    "Total: Kshs. ${formatCurrency.format(controller.panelPrice.value + controller.inverterPrice.value + controller.batteryPrice.value)}",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w500, //bold
                      color: kBlackColor,
                      height: 2,
                    ),
                  );
                  return Visibility(
                    visible: controller.visibility.value,
                    child: Container(
                      padding: const EdgeInsets.all(32.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 1.5,
                          color: kGoldColor,
                        ),
                      ),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Panels: Kshs. ${formatCurrency.format(controller.panelPrice.value)}\n"
                              "Inverters: Kshs. ${formatCurrency.format(controller.inverterPrice.value)}\n"
                              "Batteries: Kshs. ${formatCurrency.format(controller.batteryPrice.value)}\n",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w500, //bold
                            color: kBlackColor,
                            height: 2,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  "Total: Kshs. ${formatCurrency.format(controller.panelPrice.value + controller.inverterPrice.value + controller.batteryPrice.value)}",
                              style: GoogleFonts.lato(
                                fontSize: 22,
                                fontWeight: FontWeight.w700, //bold
                                color: kBlackColor,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBackgroundGoldColor,
                      elevation: 0,
                      side: BorderSide(
                        color: kGoldColor,
                        width: 1.5,
                      ),
                      // fixedSize: Size(154, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(41), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Re-design",
                        style: GoogleFonts.josefinSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700, //bold
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      // fixedSize: Size(154, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(41), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      controller.switchView(panelsNo, nob, inverterNo);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Obx(
                        () => Text(
                          controller.buttonText.value,
                          style: GoogleFonts.josefinSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700, //bold
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  Item({
    Key? key,
    required this.size,
    required this.number,
    required this.title,
  }) : super(key: key);

  final String size;
  final String number;
  final String title;
  TextStyle titleStyle = GoogleFonts.lato(
    fontSize: 26,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  TextStyle subtitleStyle = GoogleFonts.lato(
    fontSize: 22,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );
  TextStyle contentStyle = GoogleFonts.lato(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 60,
            ),
            Text(title, style: titleStyle),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Size: ',
                    style: subtitleStyle,
                    children: <TextSpan>[
                      TextSpan(text: size, style: contentStyle),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Number: ',
                    style: subtitleStyle,
                    children: <TextSpan>[
                      TextSpan(text: number, style: contentStyle),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}

class SystemResultPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemResultPageController());
  }
}

class SystemResultPageController extends GetxController {
  var visibility = false.obs;
  RxString buttonText = "Get quotation".obs;
  RxDouble panelPrice = 0.0.obs;
  RxDouble inverterPrice = 0.0.obs;
  RxDouble batteryPrice = 0.0.obs;

  switchView(double noOfPanels, double noOfBatteries, double noOfInverters) {
    visibility.value = !visibility.value;
    if (visibility.value) {
      buttonText.value = "Hide quotation";
    } else {
      buttonText.value = "Get quotation";
    }
  }
}
