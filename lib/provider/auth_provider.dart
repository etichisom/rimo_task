import 'package:flutter/cupertino.dart';
import 'package:rimo/repository/model/users_model.dart';
import 'package:rimo/repository/services/auth_service.dart';

class AuthProvider extends ChangeNotifier{
  UserDetails? userDetails;

  AuthService authService = AuthService();

  Future<UserDetails?> login({
    required String number,
    required String password})async{
    var data = await authService.login(username: number, password: password);
    if(data!=null){
      Map response = data;
     userDetails =UserDetails.fromJson(response);
     notifyListeners();
     return userDetails;
    }
  }

}