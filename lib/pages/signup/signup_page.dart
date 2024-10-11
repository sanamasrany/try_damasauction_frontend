
import 'package:damasauction_frontend/pages/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class RegisterPage extends StatelessWidget{
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var mobilenomController=TextEditingController();
  var descriptionController=TextEditingController();
  var passwordController=TextEditingController();
  var confirmpasswordController=TextEditingController();

  RegisterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80), // For spacing at the top

              // Sign Up Title
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10), // Space between title and subtitle

              // Subtitle
              Text(
                'Add your details to sign up',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 40), // Space between subtitle and input fields

              // Name Input
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30), // Space between fields

              // Email Input
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Mobile No Input
              TextFormField(
                controller: mobilenomController,
                decoration: InputDecoration(
                  labelText: 'Mobile No',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Address Input
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Desciption',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Password Input
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Confirm Password Input
              TextFormField(
                controller: confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xfff2f2f2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 40),

              // Sign Up Button
              Obx(
                  ()=> controller.loadingsignup.isTrue ?
                  Center(
                    child: CircularProgressIndicator(),
                  )
                      :
                  ElevatedButton(
                    onPressed: () {
                      controller.name =nameController.text;
                      controller.email =emailController.text;
                      controller.mobilenom =mobilenomController.text;
                      controller.description =descriptionController.text;
                      controller.password =passwordController.text;
                      controller.confirmpassword =confirmpasswordController.text;
                      onClickSignup();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ),


              SizedBox(height: 10), // Space between button and login link

              // Already have an account? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offAllNamed('/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void onClickSignup() async {

    await controller.RegisterOnClick();
    if (controller.registerStatus) {
     // Get.offNamed('/home');
    }else{
      print('error');
    }
  }
}