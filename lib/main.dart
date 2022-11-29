import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web/Pages/index.dart';
import 'package:web/Pages/system_result.dart';
import 'package:web/reusables.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Pages/Reusables/unknown.dart';
import 'Pages/contact_us.dart';
import 'Pages/system_easy.dart';
import 'Pages/system_select.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
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
                binding: SystemSelectPageBinding(),
              ),
              GetPage(
                name: '/contact',
                page: () => ContactusPage(),
                binding: ContactUsBinding(),
                // transition: Transition.zoom,
              ),
              GetPage(
                name: '/easy',
                page: () => SystemEasyPage(),
                binding: SystemEasyPageBinding(),
              ),
              GetPage(
                name: '/result',
                page: () => SystemResultsPage(),
                binding: SystemResultPageBinding(),
              ),
            ],
            unknownRoute: GetPage(name: '/notfound', page: () => UnknownPage()),
          );
        });
  }
}
