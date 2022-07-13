import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(58, 92, 164, 72),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(205, 55, 161, 26),
          title: const Center(
            child: Text(
              "Kurdistan",
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://gov.krd/media/2897/kurdistan_flag_3457x2355.gif',
                  width: 400,
                ),
              ),
            ),
            const Text(
              'Hello Kurdistan',
              style: TextStyle(
                color: Color.fromARGB(205, 55, 161, 26),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
