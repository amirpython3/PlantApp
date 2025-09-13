import 'package:flutter/material.dart';
import 'package:planetapp/const/constans.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentindex = 0;
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 20.0 : 8.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Constans.primerycolor,
      ),
    );
  }

  List<Widget> _biuldIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (i == currentindex) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 30, bottom: 20),
            child: InkWell(
              onTap: () {},
              child: Text(
                'رد کردن',
                style: TextStyle(color: Colors.black, fontFamily: 'Lalezar'),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentindex = page;
              });
            },
            children: [
              splash_screen(
                title: Constans.titleOne,
                disciption: Constans.descriptionOne,
                images: 'assets/images/plant-one.png',
              ),
              splash_screen(
                title: Constans.titleTwo,
                disciption: Constans.descriptionTwo,
                images: 'assets/images/plant-two.png',
              ),
              splash_screen(
                title: Constans.titleThree,
                disciption: Constans.descriptionThree,
                images: 'assets/images/plant-three.png',
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 40,
            child: Row(children: _biuldIndicator()),
          ),

          Positioned(
            bottom: 30,
            right: 40,
            child: Container(
              height: 50,
              width: 50,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constans.primerycolor,
              ),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class splash_screen extends StatelessWidget {
  final String title;
  final String disciption;
  final String images;
  const splash_screen({
    required this.title,
    required this.disciption,
    required this.images,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 300, height: 300, child: Image.asset(images)),
          SizedBox(height: 20),
          Text(title, style: TextStyle(fontFamily: 'Lalezar', fontSize: 30)),
          SizedBox(height: 20),
          Text(
            disciption,
            style: TextStyle(fontFamily: 'Lalezar', fontSize: 20),
          ),
        ],
      ),
    );
  }
}
