import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../models/login_resp_model.dart';
import '../../home/ui/home_page.dart';

class LoginGetController extends GetxController {

  // email , password
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> initiateLogin() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    final headers = {'Accept': 'application/json'};
    final request = http.MultipartRequest(
        'POST', Uri.parse('https://api.sejourne.ae/api/login'));
    request.fields.addAll({
      'email': emailController.text.trim(),
      'password': passwordController.text.trim()
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
     LoginRespModel respModel= loginRespModelFromJson(await response.stream.bytesToString());
      if(respModel.status) {
        Get.offAll(() => HomePage());
      }
    } else {
      print(response.reasonPhrase);
    }
  }
}
