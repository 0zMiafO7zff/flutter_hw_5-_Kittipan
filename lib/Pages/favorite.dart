import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Favorite")),
      body: Row(
        
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(height: 50),
            Text("Playing Basketball"),
            SizedBox(height: 10),
            Image.network(
              '../lib/assets/images/basketball.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            Text("Playing Guitar"),
            SizedBox(height: 10), 
            Image.network(
              '../lib/assets/images/guitar.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            SizedBox(height: 50),
            Text("Take Photo"),
            SizedBox(height: 10),
            Image.network(
              '../lib/assets/images/takephoto.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            Text("Money~~"),
            SizedBox(height: 10),
            Image.network(
              '../lib/assets/images/money.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
      )
    );
  }
}
