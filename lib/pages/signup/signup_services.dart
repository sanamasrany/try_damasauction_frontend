import 'dart:convert';
import 'dart:io';

import 'package:damasauction_frontend/Utiles.dart';
import 'package:http/http.dart' as http ;
class RegisterService {


  var msg;




  var url = Uri.parse('https://api.mazaddimashq.com/api/auth/register');


  Future<bool> register  (String name , String email,
      String mobilenom , String description ,String password , String confirmpassword
      ) async { // async and await for making any comand after wait till this ends

    print(name);
    print(password);
    print(email);
    print(mobilenom);
    print(description);
    print(confirmpassword);

    var response = await http.post(url,

        body: {
          'name': name,
          'username': email,
          'password': password,
          'password_confirmation': confirmpassword,

        }
    );
    print(response.statusCode);
    print(response.body);

    if(response.statusCode == 200){
      var replay = jsonDecode(response.body);
      msg = replay['message'];
      showToast(text:msg ,state: ToastStates.SUCCESS);

      return true;
    }else {
      var replay = jsonDecode(response.body);
      msg = replay['message'];
      showToast(text:msg ,state: ToastStates.EROOR);
      return false;
    }
  }







}