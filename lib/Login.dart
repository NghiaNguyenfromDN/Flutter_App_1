import 'package:flutter/material.dart';
import 'package:flutter_application_4/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 251, 251, 251),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 178, 178, 178))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 40, 40, 250),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    hintText: "Nhập Email vô",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 186, 186, 186))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 17, 17, 247),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.purple,
                    ),
                    hintText: "Nhập Password lần nữa",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
