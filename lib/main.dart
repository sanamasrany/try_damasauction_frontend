import 'package:damasauction_frontend/bindings/landing_bindings.dart';
import 'package:damasauction_frontend/bindings/signup_binding.dart';
import 'package:damasauction_frontend/pages/landing/landing_page.dart';
import 'package:damasauction_frontend/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(


          GetMaterialApp( //same as materialapp but for get package ia easier
            initialRoute: '/landing', //the page that the prog will start from
            getPages: [
            //  GetPage(name: '/login' ,page: ()=> LoginPage() , binding: LoginPageBinding() ),
              GetPage(name: '/register' ,page: ()=> RegisterPage() , binding: RegisterPageBinging() ),
           //   GetPage(name: '/splash' ,page: ()=> HomePage() , binding: HomePageBinding() ),
              GetPage(name: '/landing' ,page: ()=> LandingPage() , binding: LandingPageBinging() ),
            ],
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            //translations: Translation(),
           // locale: Locale('en'),
           // fallbackLocale: Locale('en'),
            debugShowCheckedModeBanner: false,
          )

  );
}

