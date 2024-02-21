import 'package:flutter/material.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Information'),
        backgroundColor: Colors.green, 
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Meet Our Doctors',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            DoctorCard(
              name: 'Dr. R Dayal',
              specialization: 'Cardiologist',
              imageAsset: 'assets/doctor1.jpg',
            ),
            SizedBox(height: 10),
            DoctorCard(
              name: 'Dr. Nawabuddin Jaishwal',
              specialization: 'Pediatrician',
              imageAsset: 'assets/doctor2.jpg',
            ),
            SizedBox(height: 10),
            DoctorCard(
              name: 'Dr. Tanmay Sharma',
              specialization: 'Orthopedic Surgeon',
              imageAsset: 'assets/doctor3.jpg',
            ),
            // Add more DoctorCard widgets as needed
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String imageAsset;

  const DoctorCard({
    required this.name,
    required this.specialization,
    required this.imageAsset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imageAsset),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              specialization,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
