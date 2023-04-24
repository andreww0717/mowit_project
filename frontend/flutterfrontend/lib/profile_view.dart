import 'package:flutter/material.dart';
import 'package:mowit_app/main.dart';
import 'package:mowit_app/profile_edit.dart';
// ignore: unused_import
import 'package:mowit_app/homepage.dart';
import 'package:mowit_app/settings.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 255, 0, 0),
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
      bottomNavigationBar: buildMyNavBar(context),
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
                        return const ProfileEdit();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Edit Information"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return HomePage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.home_outlined),
            color: Colors.white,
            iconSize: 35,
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ProfileView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
            iconSize: 35,
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Settings();
                  },
                ),
              );
            },
            icon: const Icon(Icons.settings_outlined),
            color: Colors.white,
            iconSize: 35,
          )
        ],
      ),
    );
  }
}
