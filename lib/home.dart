import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 53, 124, 182),
            Color.fromARGB(255, 129, 37, 37)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/output-mediconnect@iiita.png',
              opacity: const AlwaysStoppedAnimation(.5),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              //padding: EdgeInsets.only(left: 35, top: 30),
              child: Center(
                child: Container(
                  height: 60,
                  width: 300,
                  child: Center(
                    child: Text(
                      'An App for all your healthcare needs',
                      style: TextStyle(
                        color:
                            Color.fromARGB(255, 251, 251, 251).withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.4,
            // ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: ButtonStyle(),
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        width: 130,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        style: ButtonStyle(),
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, 'dashboard');
                  //   },
                  //   style: ButtonStyle(),
                  //   child: Text(
                  //     'Dashboard',
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //         decoration: TextDecoration.underline,
                  //         color: Colors.white,
                  //         fontSize: 18),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
