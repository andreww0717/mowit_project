// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/main.dart';
import 'package:mowit_app/profile_view.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "MowIt",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w200,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
            ),
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('images/profile picture.jpg'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "$firstName $lastName",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "First Name",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              firstName,
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Last Name",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              lastName,
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Phone Number",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "770-123-4567",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Email",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "AndrewsEmail@gmail.com",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Password",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "MyPassword123!",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(
              width: 350.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ProfileView();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Save Information"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
