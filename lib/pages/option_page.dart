import 'package:flutter/material.dart';
import 'package:sample/model/userMode.dart';

class OptionPage extends StatefulWidget {
  final UserModel? userModel;
  const OptionPage({super.key, required this.userModel});

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: SafeArea(
          child: Row(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black),
              child: const Text(
                "Looking For Room ",
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black),
              child: const Text(
                "Looking for a Renter ",
                style: TextStyle(fontSize: 20),
              )),
        ],
      )),
    );
  }
}
