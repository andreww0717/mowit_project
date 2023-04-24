import 'package:flutter/material.dart';

import 'package:mowit_app/main2.dart';
import 'package:mowit_app/profile_edit.dart';

import 'package:mowit_app/settings.dart';

class ProfileView2 extends StatefulWidget {
  const ProfileView2({super.key});

  @override
  State<ProfileView2> createState() => _ProfileViewState2();
}

class _ProfileViewState2 extends State<ProfileView2> {
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
              backgroundImage: AssetImage('images/mikelogo.png'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "$firstName2 $lastName2",
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
              firstName2,
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
              lastName2,
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
              "404-568-6989",
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
              "mikeslawncare@gmail.com",
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
                    return const HomePage2();
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
                    return const ProfileView2();
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
