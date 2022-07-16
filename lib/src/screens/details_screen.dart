import 'package:flutter/material.dart';
import 'package:hello_kurdistan_app/models/city_model.dart';

class DetailsScreen extends StatelessWidget {
  final CityModel city;

  const DetailsScreen({
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        iconSize: 25,
        color: Colors.black,
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Column(
          children: [
            Image.network(city.image),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                city.name,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(city.description),
            ),
          ],
        ),
      ),
    );
  }
}
