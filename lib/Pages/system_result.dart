import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:web/Pages/Reusables/standard_page.dart';

class SystemResultsPage extends StatelessWidget {
  const SystemResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        crossAxisAlignment: CrossAxisAlignment.start,
        pageBody: SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: Column(
              children: [
                Text(Get.arguments["watts"].toString()),
                Text(Get.arguments["wattHours"].toString()),
              ],
            )));
  }
}
