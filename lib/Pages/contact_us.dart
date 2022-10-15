import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/Pages/Reusables/standard_page.dart';

class ContactusPage extends GetView<ContactUsController> {
  ContactusPage({Key? key}) : super(key: key);
  final TextStyle textstyle = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w700, //bold
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      crossAxisAlignment: CrossAxisAlignment.start,
      pageBody: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: Form(
          key: controller.contactUsFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16 * 3,
              ),
              Text(
                'Kindly leave us a message and someone in our team will reach out \nas soon as possible',
                style: GoogleFonts.josefinSans(
                  fontSize: 32,
                  height: 2,
                  fontWeight: FontWeight.w700, //bold
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  InputBox(
                    hintText: 'Enter your Name',
                    labelText: 'Your Name',
                    width: 200,
                    noOfLines: 1,
                    textController: controller.nameController,
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  InputBox(
                    hintText: 'Enter your Email',
                    labelText: 'Your Email Address',
                    width: 250,
                    noOfLines: 1,
                    textController: controller.emailController,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              InputBox(
                width: 482,
                labelText: "Message ",
                hintText: "Your Message here...",
                noOfLines: 3,
                textController: controller.messageController,
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(106, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(41), // <-- Radius
                  ),
                ),
                onPressed: () {
                  controller.login();
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.josefinSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700, //bold
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputBox extends GetView<ContactUsController> {
  const InputBox({
    Key? key,
    required this.width,
    required this.labelText,
    required this.hintText,
    required this.noOfLines,
    required this.textController,
    //TODO: SET UP VALIDATION FOR THE TEXTFIELDS
    // required this.validator,
  }) : super(key: key);

  final double width;
  final String labelText;
  final String hintText;
  final int noOfLines;
  final TextEditingController textController;
  // final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: textController,
        // validator: validator,
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
    );
  }
}

class ContactUsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsController());
  }
}

class ContactUsController extends GetxController {
  final contactUsFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    messageController.dispose();
    super.onClose();
  }

  String? validator(String value) {
    if (value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  void login() {
    if (contactUsFormKey.currentState!.validate()) {
      checkUser(
              nameController.text, emailController.text, messageController.text)
          .then((auth) {
        if (auth) {
          Get.snackbar('Submit', 'Submitted successfully');
        } else {
          Get.snackbar('Login', 'Invalid email or password');
        }
      });
    }
  }

  // Api Simulation
  Future<bool> checkUser(String name, String email, String message) {
    print("Name is: $name \nEmail is: $email \nPassword is: $message");

    return Future.value(true);
  }
}
