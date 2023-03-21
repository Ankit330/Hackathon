import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 170,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/img1.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: const Center(
                  child: Text(
                "LandLord Details",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
            child: Container(
              height: 330,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: const Center(
                  child: Text(
                "Room Details",
                style: TextStyle(fontSize: 20),
              )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 55,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black),
                  child: const Text(
                    "Rent Now",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ),
        ],
      )),
    );
  }
}
