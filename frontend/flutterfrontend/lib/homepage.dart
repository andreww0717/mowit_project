import 'package:flutter/material.dart';
import 'package:flutterfrontend/main.dart';
import 'package:flutterfrontend/profile_view.dart';
import 'package:flutterfrontend/settings.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                        fontFamily: 'Berkshire Swash',
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "         $firstName $lastName",
                      style: TextStyle(
                        fontFamily: 'Berkshire Swash',
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 50),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile picture.jpg'),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Align(
              alignment: Alignment(-.75, 0),
              child: Text(
                "Recommended based on Zip Code:",
                style: TextStyle(
                  fontFamily: 'Berkshire Swash',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      "        Landon's Lawn Care",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Kennesaw, Georgia",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
                  width: 75.0,
                  height: 25.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey,
                    ),
                    child: const Text("Book"),
                  ),
                ),
              ],
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
                    return const Home();
                  },
                ),
              );
            },
            icon: const Icon(Icons.home_filled),
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
            icon: const Icon(Icons.settings_outlined),
            color: Colors.white,
            iconSize: 35,
          )
        ],
      ),
    );
  }
}
