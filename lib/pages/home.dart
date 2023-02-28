import 'package:flutter/material.dart';
import 'package:simple_app/pages/calculator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD04A),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 200),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/logo.png",
                height: 130,
                width: 130,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Novia Adelia (123200023)",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Afrien Khoirunnisa S (123200093)",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Color(0xfff372a01)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Calculator()));
                    },
                    child: Text("E-Calculator",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
