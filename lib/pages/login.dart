import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB48B57),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 120.0),
              child: Text(
                "Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
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
      height: 40,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
        labelText: "Email/Username",
        labelStyle: TextStyle(
        fontFamily: "FolksNormal",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          )
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10.0, right: 10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(
            fontFamily: "FolksNormal",
            ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0)
          )
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      height: 44.0,
      padding: EdgeInsets.only(left: 112.0, right: 113.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, "/home");
        }, 
        child: Text(
          "Log In",
          style: TextStyle(
            fontFamily: 'FolksNormal',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xfff000000)
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffEED4AF))
        ),
      ),
    );
  }
}