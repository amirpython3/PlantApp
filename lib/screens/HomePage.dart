import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.only(top: 20, right: 30)),
          InkWell(
            onTap: () {},
            child: Text('رد کردن', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
