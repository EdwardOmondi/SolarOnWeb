import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/standard_page.dart';
import 'package:web/Pages/system_select.dart';

import '../reusables.dart';

class SystemEasyPage extends GetView<SystemEasyPageController> {
  SystemEasyPage({Key? key}) : super(key: key);

  final SystemSelectPageController systemSelectPageController =
      Get.put(SystemSelectPageController());
  final AppliancesController appliancesController =
      Get.put(AppliancesController());

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
              height: 16,
            ),
            Text(
              "${systemSelectPageController.selectedPage.value} Design",
              style: kParagraphStyle,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Kindly add the items you’d want to include in the solar system',
              style: kH2TextStyle,
            ),
            SizedBox(
              height: 32,
            ),
            Form(
              key: controller.easyFormKey,
              child: Row(
                children: [
                  InputBox(
                    width: 250,
                    labelText: "Item",
                    hintText: "e.g. Lights",
                    noOfLines: 1,
                    textController: controller.itemController,
                    inputType: "Text",
                  ),
                  InputBox(
                    width: 150,
                    labelText: "Qty",
                    hintText: "e.g. 5",
                    noOfLines: 1,
                    textController: controller.qtyController,
                    inputType: "Number",
                  ),
                  InputBox(
                    width: 150,
                    labelText: "Power Rating",
                    hintText: "e.g. 5 W",
                    noOfLines: 1,
                    textController: controller.powerController,
                    inputType: "Number",
                  ),
                  InputBox(
                    width: 150,
                    labelText: "Usage Time",
                    hintText: "e.g. 0.5 Hrs",
                    noOfLines: 1,
                    textController: controller.timeController,
                    inputType: "Number",
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.easyFormKey.currentState!.validate()) {
                        Appliance appliance = Appliance(
                          item: controller.itemController.text,
                          qty: double.parse(controller.qtyController.text)
                              .toInt(),
                          powerRating:
                              double.parse(controller.powerController.text),
                          time: double.parse(controller.timeController.text),
                        );
                        appliancesController.addApliance(appliance);
                      } else {
                        print("Input values");
                      }
                    },
                    icon: Icon(
                      Icons.add_circle_outline_outlined,
                      color: kBlackColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                width: 909,
                height: 2.5,
                color: kInactiveColor,
              ),
            ),
            Flexible(
              child: GetBuilder<AppliancesController>(
                builder: (controller) => ListView.builder(
                    itemCount: controller.appliances.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Text(
                              "${index + 1}. ",
                              style: kNormalTextStyle,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                controller.appliances[index].item,
                                style: kNormalTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "${controller.appliances[index].qty}",
                                style: kNormalTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "${controller.appliances[index].powerRating}",
                                style: kNormalTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "${controller.appliances[index].time}",
                                style: kNormalTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {
                                controller.removeAppliance(index);
                              },
                              icon: Icon(
                                Icons.delete_outlined,
                                color: kBlackColor,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputBox extends GetView<SystemEasyPageController> {
  final String inputType;

  const InputBox({
    Key? key,
    required this.width,
    required this.labelText,
    required this.hintText,
    required this.noOfLines,
    required this.textController,
    required this.inputType,
  }) : super(key: key);

  final double width;
  final String labelText;
  final String hintText;
  final int noOfLines;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: SizedBox(
        width: width,
        child: TextFormField(
          controller: textController,
          // validator: validator,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '* This field is Required';
            }
            return null;
          },
          maxLines: noOfLines,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0))),
            labelText: labelText,
            hintText: hintText,
          ),
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.normal, //bold
          ),
        ),
      ),
    );
  }
}

class SystemEasyPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemEasyPageController());
  }
}

class SystemEasyPageController extends GetxController {
  final easyFormKey = GlobalKey<FormState>();
  final itemController = TextEditingController();
  final qtyController = TextEditingController();
  final powerController = TextEditingController();
  final timeController = TextEditingController();
}

class AppliancesController extends GetxController {
  List<Appliance> appliances = [
    Appliance(item: "Item", qty: 1, powerRating: 1, time: 1)
  ];
  addApliance(Appliance appliance) {
    appliances.add(appliance);
    update();
  }

  removeAppliance(int index) {
    appliances.removeAt(index);
    update();
  }
}

class Appliance {
  final String item;
  final int qty;
  final double powerRating;
  final double time;

  Appliance({
    required this.item,
    required this.qty,
    required this.powerRating,
    required this.time,
  });

  @override
  String toString() {
    return "(item: $item, qty: $qty, "
        "power: $powerRating, time: $time)";
  }
}
