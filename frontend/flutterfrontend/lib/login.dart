// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutterfrontend/sign_in_contractor.dart';
import 'package:flutterfrontend/sign_in_customer.dart';
import 'package:flutterfrontend/sign_up.dart';
import 'package:flutterfrontend/connect_phone.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(75),
            ),
            Image.asset('images/logo.png'),
            Container(
              padding: const EdgeInsets.only(top: 50),
            ),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const ConnectPage();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(
                        color: Colors.red,
                      )),
                  child: const Text("Connect With Phone Number")),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
            ),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SignInCustomer();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Sign In as Customer"),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
            ),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SignInContractor();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Sign In as Contractor"),
              ),
            ),
            SizedBox(
              width: 250,
              height: 40,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const SignUpPage();
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Don\'t have an account? Sign Up')),
            )
          ],
        ),
      ),
    );
  }
}
