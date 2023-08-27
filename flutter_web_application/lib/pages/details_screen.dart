// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_web_application/widgets/available_size.dart';
import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 36),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red.shade100,
              ),
              child: Image.asset(product.image, fit: BoxFit.cover),
            )
          ],
        ),
        const SizedBox(height: 36.0),
        Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$' '${product.price}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Text(
                product.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                  height:
                      20), // Adding some space between the existing Row and the new Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Available Size",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  AvailableSize(size: "US 6"),
                  AvailableSize(size: "US 7"),
                  AvailableSize(size: "US 8"),
                  AvailableSize(size: "US 9"),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: 8.0),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 8.0),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.amber,
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
      bottomSheet: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 10,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' '${product.price}',
                style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("Add to Cart"),
              )
            ],
          ),
        ),
      ),
    );
  }
}