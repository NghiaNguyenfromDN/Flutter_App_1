import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_4/main.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterScreen> {
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
              height: 200,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 0, 255, 204)),
                    (Color.fromARGB(255, 255, 255, 232))
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Trang Đăng Ký',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                  )
                ],
              ),
            ),
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
                color: Color.fromARGB(255, 254, 254, 254),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 169, 169, 169))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 8, 8, 249),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    hintText: "Nhập Họ Tên ",
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
                      color: Color.fromARGB(255, 180, 180, 180))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color.fromARGB(255, 0, 0, 24),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.purple,
                    ),
                    hintText: "Nhập Password lần đầu",
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
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp())),
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(82, 0, 255, 221)),
                    (Color.fromARGB(82, 0, 255, 221))
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        color: Color.fromARGB(255, 255, 255, 255))
                  ],
                ),
                child: Text(
                  "Đăng ký",
                  style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MyApp()))
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(82, 0, 255, 221)),
                    (Color.fromARGB(82, 0, 255, 221))
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        color: Color.fromARGB(255, 251, 250, 250))
                  ],
                ),
                child: Text(
                  "Trở về đăng nhập ",
                  style: TextStyle(color: Color.fromARGB(255, 255, 2, 2)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
