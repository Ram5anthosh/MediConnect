import 'package:flutter/material.dart';
import 'healthcenter.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B9A), Color(0xFFAB83A1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  'Real Time Heart Rate Graph                      ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    background: Paint()
                      ..strokeWidth = 30.0
                      ..color = const Color.fromARGB(255, 206, 211, 214)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round,
                  ),
                ),
                const SizedBox(height: 15),
                Image.asset(
                  'assets/heartRateGraph.jpeg',
                  opacity: const AlwaysStoppedAnimation(.5),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/heartBlink.gif',
                  opacity: const AlwaysStoppedAnimation(.5),
                  height: 290,
                  width: 800,
                ),
                const SizedBox(height: 15),
                Text(
                  'Current Heart Rate     :     89 bpm',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    background: Paint()
                      ..strokeWidth = 30.0
                      ..color = const Color.fromARGB(255, 134, 182, 205)
                      ..style = PaintingStyle.stroke
                      ..strokeJoin = StrokeJoin.round,
                  ),
                ),
                const SizedBox(height: 30),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 56, 52, 52),
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text(
                    'See Health Report',
                  ),
                ),
                const SizedBox(height: 20),
                // Add a button to navigate to HospitalInfoScreen
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalInfoScreen()),
                    );
                  },
                  child: Text('Hospital Info'),
                ),
                const SizedBox(height: 20),
                // Add a button to go back
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
