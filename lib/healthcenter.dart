import 'package:flutter/material.dart';
import 'doctorinfo.dart';

class HospitalInfoScreen extends StatelessWidget {
  const HospitalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Information'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Welcome to IIITA Health Center',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/hospital_photo.jpeg', 
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorInfoScreen()),
                );
              },
              child: Text('Meet Our Doctors'),
            ),
            SizedBox(height: 20),
            Text(
              'Indian Institute of Information Techonology, Allahabad Primary Health Center is dedicated to providing high-quality healthcare services to our community. Our team of experienced professionals is committed to your well-being and ensuring a comfortable and safe environment for all our patients.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Contact Information:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Address: Health Center, IIITA, Jhalwa, Uttar Pradesh-211015',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Phone: (123) 456-7890',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Email: healthcenter@iiita.ac.in',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
