import 'package:flutter/material.dart';
import 'modules/mobile_auth/screens/mobile_auth_home.dart';

class FirebaseMain extends StatelessWidget {
  const FirebaseMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MobileAuthHome()));
                },
                child: const Text('Firebase Mobile Auth'))
          ],
        ),
      ),
    );
  }
}
