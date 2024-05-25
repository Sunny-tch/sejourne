import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../home/ui/home_page.dart';

class SignUpGetController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //name, email, password, retype password.
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  Future<void> initiateSignUp() async {
    final headers = {'Accept': 'application/json'};
    final request = http.MultipartRequest(
        'POST', Uri.parse('https://api.sejourne.ae/api/register'));
    request.fields.addAll({
      'name': nameController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
      'password_confirmation': retypePasswordController.text.trim()
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      Get.offAll(() => HomePage());
    } else {
      print(response.reasonPhrase);
    }
  }
}
