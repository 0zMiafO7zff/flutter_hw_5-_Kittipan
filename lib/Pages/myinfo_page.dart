import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Info Kittipan J.")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Name : Kittipan Jongjienwattannakul"),
            Text("Age : 19 Year"),
            Text("Study : Nakhanpathom Vocational College"),
            Text("Phone : 061-5943986"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                      20.0), 
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), 
                  child: Image.asset(
                    '../lib/assets/images/Me.jpg',
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
