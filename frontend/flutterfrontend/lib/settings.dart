// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/profile_view.dart';
import 'package:mowit_app/homepage.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
      bottomNavigationBar: buildMyNavBar(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text("Settings"),
        ],
      )),
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
                    return const Home();
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
            icon: const Icon(Icons.person_outlined),
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
            icon: const Icon(Icons.settings),
            color: Colors.white,
            iconSize: 35,
          )
        ],
      ),
    );
  }
}
