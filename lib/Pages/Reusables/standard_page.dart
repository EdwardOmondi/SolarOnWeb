import 'package:flutter/material.dart';
import 'package:web/Pages/Reusables/footer.dart';
import 'package:web/Pages/Reusables/header.dart';
import 'package:web/reusables.dart';

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
}
