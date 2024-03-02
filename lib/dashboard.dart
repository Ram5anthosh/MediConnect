import 'package:flutter/material.dart';
import 'package:smartwatch_application/healthcenter.dart';
import 'package:smartwatch_application/home.dart';
//import 'healthcenter.dart';

void main() {
  runApp(const StartScreen());
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _MyAppState();
}


class _MyAppState extends State<StartScreen> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Navigation bar',
      home: Scaffold(
        body: [
          Container(
            child: Center(
              child: Container(
                height: screenHeight,
                width: screenWidth,
                color: const Color.fromARGB(255, 71, 147, 140),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'MediConnect',
                            style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1)
                                  .withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 25,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //borderRadius: BorderRadius.circular(100)
                          //more than 50% of width makes circle
                        ),
                        child: const Text(
                          '   Heart Rate Statistics',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ),
                      Image.asset(
                        'assets/heartRateGraph.jpeg',
                        opacity: const AlwaysStoppedAnimation(.5),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 75,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(800)
                                //more than 50% of width makes circle
                                ),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.directions_walk,
                                  size: 30,
                                ),
                                Text(
                                  'Steps: 1321',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                            width: 35,
                          ),
                          Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(800)
                                //more than 50% of width makes circle
                                ),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.heart_broken_sharp,
                                  size: 30,
                                ),
                                Text(
                                  'Heart: 89bpm',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                            width: 35,
                          ),
                          Container(
                            height: 75,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(800)
                                //more than 50% of width makes circle
                                ),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.local_fire_department,
                                  size: 30,
                                ),
                                Text(
                                  'Calorie: 89kcal',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 75,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(800)
                            //more than 50% of width makes circle
                            ),
                        child: const Center(
                          child: Row(
                            children: [
                              Text(
                                "                 Heart Attack Risk",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.speed,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //Text("Hi");
                          // Perform an action when the button is pressed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          elevation: 10,
                        ),
                        child: const Text(
                          'SOS',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Row(
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://www.pngitem.com/pimgs/m/214-2145309_blank-profile-picture-circle-hd-png-download.png'))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                'Aditya Kumar',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                '3rd Year Btec Student',
                                style: TextStyle(
                                    color: Colors.blueGrey[400],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      //more than 50% of width makes circle
                    ),
                    child: const Row(children: [
                      Text("gmail: "),
                      Text("vikramiiita1910@gmail.com")
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      //more than 50% of width makes circle
                    ),
                    child: const Row(children: [
                      Text("Enrollment no. : "),
                      Text("IEC2021116")
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      //more than 50% of width makes circle
                    ),
                    child:
                        const Row(children: [Text("Gender: "), Text("Male")]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      //more than 50% of width makes circle
                    ),
                    child: const Row(
                        children: [Text("Address: "), Text("Boys hostel 4")]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      //more than 50% of width makes circle
                    ),
                    child: const Row(
                        children: [Text("Blood group: "), Text("O+")]),
                  ),
                ],
              ),
            ),
          ),
          // const Center(
          //   child: Text('profile'),
          // ),
          const Center(
            child: Text(
              'Health Report',
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HospitalInfoScreen()),
                );
              },
              child: Text('Hospital Information'),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 120),
                Text('Do you really want to logout?'),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHome()),
                    );
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          ),
        ][selectedPageIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          selectedIndex: selectedPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
          },
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.dashboard),
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_outline),
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.assignment_outlined),
              icon: Icon(Icons.assignment_outlined),
              label: 'Report',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.medical_services),
              icon: Icon(Icons.medical_services),
              label: 'Hospital',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.logout),
              icon: Icon(Icons.logout),
              label: 'logout',
            ),
          ],
        ),
      ),
    );
  }
}
