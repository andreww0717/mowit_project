// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/login.dart';
import 'package:mowit_app/profile_edit.dart';

import 'package:mowit_app/homepage.dart';
import 'package:mowit_app/profile_view2.dart';
import 'package:mowit_app/settings.dart';

void main() {
  runApp(const MyApp());
}

String firstName2 = "Mikes's";
String lastName2 = "Lawn Care";

String getFirstName() {
  return firstName2;
}

String getLastName() {
  return lastName2;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.amber,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  _HomePageState2 createState() => _HomePageState2();
}

class _HomePageState2 extends State<HomePage2> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
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
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.only(
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
                    //REDIRECT TO HOME
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
                    //REDIRECT TO PROFILE VIEW
                    return const ProfileView2();
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

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          "$firstName2 $lastName2",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Color.fromRGBO(244, 67, 54, 1),
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    SizedBox(width: 10),
    CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('images/mikelogo.png'),
    ),
  ],
),
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Align(
              alignment: Alignment(-1,0),
              child: Text(
                "Recommended Customers based on Zip Code:",
                style: TextStyle(
                  fontFamily: 'Berkshire Swash',
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Myles Joseph",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Kennesaw, Georgia - Around 2.5 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Needed: Lawn Cutting, Tree Removal",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Estimated Payout:\$350",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 70, 70),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 53, 53, 53),
                    ),
                    child: const Text("Accept Work"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                
              ],
              
              
            ),
            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
            
//Next Customer
            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "James Nguyen",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Atlanta, Georgia - Around 6 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Needed: Lawn Cutting, Weed Removal, Tree Removal",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Estimated Payout:\$400",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 70, 70),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 53, 53, 53),
                    ),
                    child: const Text("Accept Work"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                
              ],
              
              
            ),
            //Next Customer

            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Caleb Potter",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Lawrenceville, Georgia - Around 12 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Needed: Weed Removal, Pinecone Removal",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Estimated Payout:\$200",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 70, 70),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 53, 53, 53),
                    ),
                    child: const Text("Accept Work"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                
              ],
              
              
            ),

            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Johnny Favors",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Atlanta, Georgia - Around 15 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Needed: Pinecone Removal",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Estimated Payout:\$150",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 70, 70),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 53, 53, 53),
                    ),
                    child: const Text("Accept Work"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                
              ],
              
              
            ),

            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

                                    SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company       
 SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Post a New Job"),
                  ),
                ),

                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage2();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Post a Promo Deals"),
                  ),
                )
            
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            SizedBox(width: 5),
              Text(
                 "5", // replace with the actual rating value
              style: TextStyle(
              color: Colors.black,
              fontSize: 18,
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
              "404-256-6238",
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
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
