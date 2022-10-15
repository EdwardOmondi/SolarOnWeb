import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/Pages/index.dart';
import 'package:web/reusables.dart';

import 'Pages/Reusables/unknown.dart';
import 'Pages/contact_us.dart';
import 'Pages/system_select.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solaron',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kGoldColor,
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Index(),
        ),
        GetPage(
          name: '/design',
          page: () => SystemSelectPage(),
        ),
        GetPage(
          name: '/contact',
          page: () => ContactusPage(),
          binding: ContactUsBinding(),
          // transition: Transition.zoom,
        ),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownPage()),
    );
  }
}
