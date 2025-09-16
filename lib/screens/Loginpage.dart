import 'package:flutter/material.dart';
import 'package:planetapp/const/constans.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/plantbackgarnd.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter, // بالای صفحه، وسط
            child: Padding(
              padding: const EdgeInsets.only(top: 80), // فاصله از بالا
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9, // 90% عرض صفحه
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9), // کمی شفاف برای زیبایی
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'ورود به حساب کاربری',
                style: TextStyle(fontFamily: 'Lalezar', fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontFamily: 'Lalezar', fontSize: 24),

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.green.shade100,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 3,
                        color: Constans.primerycolor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        width: 3,
                        color: Constans.primerycolor,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all<double>(8),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    (Constans.primerycolor),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'ورود',
                  style: TextStyle(
                    fontFamily: 'Lalezar',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/cartoonplant.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
