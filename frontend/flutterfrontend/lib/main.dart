
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutterfrontend/login.dart';
import 'package:flutterfrontend/profile_edit.dart';
import 'package:flutterfrontend/profile_view.dart';
import 'package:flutterfrontend/homepage.dart';
import 'package:flutterfrontend/settings.dart';

void main() {
  runApp(const MyApp());
}

String firstName = "Andrew";
String lastName = "Winland";

String getFirstName() {
  return firstName;
}

String getLastName() {
  return lastName;
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    return const HomePage();
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
          "$firstName $lastName",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Colors.red,
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    SizedBox(width: 10),
    CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('images/profile picture.jpg'),
    ),
  ],
),
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Align(
              alignment: Alignment(-1,0),
              child: Text(
                "Recommended based on Zip Code:",
                style: TextStyle(
                  fontFamily: 'Berkshire Swash',
                  fontSize: 40,
                ),
              ),
            ),

            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Mike's Lawn Care",
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
                      "Serives Offered: Lawn Cutting \$100, Tree Removal \$100",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Serives Offered: Weed Removal \$100, Pest Control \$150",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets

                //End of Company Widgets

              ],
            ),
            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(

              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "John's Mowing and Company",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Kennesaw, Georgia - Around 5 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Lawn Cutting \$100 minimum (Size of lawn is facotred)",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                //End of Company Widgets

              ],
            ),



            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(

              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "BIG RYAN'S TREES",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Maietta, Georgia - Around 8 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Tree Removal \$300 minimum",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                //End of Company Widgets

              ],
            ),


            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(

              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Charlie Deets",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Maietta, Georgia - Around 15 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Lawn Care, Complete Serives \$250",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets

                //End of Company Widgets

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
                      "Gwinnett Landscaping Co.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Tucker, Georgia - Around 23 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Total Lanscaping Package - \$300",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets

                //End of Company Widgets

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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Search By Zip Code"),
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
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Search by Job"),
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
// =======
// // import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MowIT',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MowIT'),
//       ),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'images/logo.jpg',
//               width: 150.0,
//               height: 150.0,
//             ),
//             SizedBox(height: 32),
//             Text(
//               'Please sign in or sign up',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the sign-in screen
//               },
//               child: Text('Sign In'),
//             ),
//             SizedBox(height: 16),
//             OutlinedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => NameInputScreen()),
//                 );
//               },
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class NameInputScreen extends StatefulWidget {
  @override
  _NameInputScreenState createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Name'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NameDisplayScreen(name: name),
                    ),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class NameDisplayScreen extends StatelessWidget {
  final String name;

  const NameDisplayScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Display'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello, $name!',
                  style: TextStyle(fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditAccountScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Five Stars',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EditAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'First Name:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(),
            SizedBox(height: 16),
            Text(
              'Last Name:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(),
            SizedBox(height: 16),
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(),
            SizedBox(height: 16),
            Text(
              'Email:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(),
            SizedBox(height: 16),
            Text(
              'Password:',
              style: TextStyle(fontSize: 16),
            ),
            TextField(),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}

