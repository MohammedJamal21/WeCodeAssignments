import 'package:flutter/material.dart';
import 'package:hello_kurdistan_app/models/city_model.dart';

import '../../mock/mock_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<CityModel> cities = mockData.map((element) {
    return CityModel.fromMap(element);
  }).toList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 106, 142, 192),
          title: const Center(
            child: Text(
              'Kurdistan Cities',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailsScreen(
                        city: cities[index],
                      );
                    }));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(25),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              mockData[index]['image'].toString()),
                        ),
                        Positioned(
                          bottom: -25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 106, 142, 192),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 25,
                                  )
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                mockData[index]['name'].toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
