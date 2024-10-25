import 'package:flutter/material.dart';
import 'package:loginpage_to_dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 18, 4, 204)),
            child: const Padding(
                padding: EdgeInsets.only(top: 80, right: 111),
                child: Column(
                  children: [
                    Text("Welcome Back!",
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                    Text(
                      "Log into your account",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 275.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 243, 240, 240)),
              height: double.infinity,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18),
              ),
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 600, left: 100),
                child: Row(
                  children: [
                    Text(
                      "Don't have an Account ?",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(
                      child: TextButton(
                        onPressed: (null),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2, bottom: 2),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color.fromARGB(255, 18, 4, 204),
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                width: 290,
                height: 311,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Enter the Emain ID',
                        ),
                      ),
                      const TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, left: 60),
                        child: TextButton(
                          onPressed: (null),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 18, 4, 204),
                                fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 230,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: ElevatedButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DashboardScreen(
                                              title: '',
                                            ))),
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.deepOrange)),
                                child: const Center(
                                    child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ))),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
