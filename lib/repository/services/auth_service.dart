import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:rimo/utils/constant/index.dart';

class AuthService{

  Future<Map?> login ({
   required String username,
    required String password,
  })async{
    try{
      EasyLoading.show(status: 'login in...');
      final response = await http.post(
        Uri.parse("$baseurl/login"),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        encoding: Encoding.getByName('utf-8'),
        body: {
          "username": username,
          "device_identification": "122445",
          "firebase_messaging_token": "token",
          "password": password
        },
      );
      var data = jsonDecode(response.body);
      EasyLoading.showToast(data['message']);
      if(response.statusCode==200){
        return jsonDecode(response.body);
      }
    }catch(e){
      EasyLoading.dismiss();
      EasyLoading.showToast('Something went wrong');

    }

  }


}