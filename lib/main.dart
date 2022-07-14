import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String firstApe =
      'https://pbs.twimg.com/media/FLGUpWKXwAQYaY7?format=jpg&name=small';
  String secondApe =
      'https://static.cryptobriefing.com/wp-content/uploads/2022/01/31074857/bored-ape-unnamed-1-440x440.png';
  String thirdApe =
      'https://preview.redd.it/kzdbqcc7jyf81.png?auto=webp&s=3e6cd10238a625f552c7b408f197d256c5807af7';
  String currentApe = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Choose an image:'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: currentApe == ''
                        ? Image.network(
                            firstApe,
                            height: 340,
                            width: 340,
                          )
                        : Image.network(
                            currentApe,
                            height: 340,
                            width: 340,
                          ),
                  ),
                )
              ],
            ),
            //----------------------------------------------------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentApe = firstApe;
                        });
                      },
                      child: Image.network(
                        firstApe,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentApe = secondApe;
                        });
                      },
                      child: Image.network(
                        secondApe,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentApe = thirdApe;
                        });
                      },
                      child: Image.network(
                        thirdApe,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
