import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/footer.dart';
import 'package:web/Pages/Reusables/header.dart';
import 'package:web/reusables.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundGoldColor,
      // appBar: Header(),
      body: Column(
        children: [
          Header(),
          Text("Index"),
          Expanded(child: Container()),
          Footer(),
        ],
      ),
    );
  }
}
