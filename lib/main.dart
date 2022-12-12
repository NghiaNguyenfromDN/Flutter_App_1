import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_4/Register.dart';
import 'package:flutter_application_4/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user not found") {
        print("No user found that");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'App bán hàng bằng Flutter',
            style: TextStyle(
              color: Color(0xCFEE5050),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Trang đăng nhập ',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 30, 129),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "User Email",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "User Password",
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
          ),
          const Text(
            "Quên mật khẩu hả ?",
            style: TextStyle(color: Color.fromARGB(255, 247, 0, 0)),
          ),
          const SizedBox(
            height: 88.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color.fromARGB(82, 4, 255, 222),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }
              },
              child: const Text(
                'Đăng nhập ',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 64, 64),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color.fromARGB(82, 0, 255, 221),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                User? user = await loginUsingEmailPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                    context: context);
                print(user);
                if (user != NullThrownError) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => RegisterScreen()));
                }
              },
              child: const Text(
                'Đăng ký trước ',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 64, 64),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
