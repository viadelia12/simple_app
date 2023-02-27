import 'package:flutter/material.dart';
import 'package:simple_app/pages/calculator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:simple_app/pages/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 200),
              alignment: Alignment.center,
              child: Text(
                "Log In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _usernameField(),
            SizedBox(
              height: 20,
            ),
            _passwordField(),
            SizedBox(
              height: 20,
            ),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(fontFamily: "Poppins"),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(fontFamily: "Poppins"),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      height: 60.0,
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: ElevatedButton(
        onPressed: () {
          if (emailController.text == "afrienkhs@gmail.com") {
            if (passwordController.text == "afrien") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Password Salah!"),
                  );
                },
              );
            }
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("Username/Email Salah!"),
                );
              },
            );
          }
        },
        child: Text(
          "Log In",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xfff000000)),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0))),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xffFFD04A))),
      ),
    );
  }
}
