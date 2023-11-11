import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarrosselConhecimento extends StatefulWidget {
  CarrosselConhecimento({Key? key}) : super(key: key);

  @override
  _CarrosselConhecimentoState createState() => _CarrosselConhecimentoState();
}

class _CarrosselConhecimentoState extends State<CarrosselConhecimento> {
  int _current = 0;
  final List<String> imgconList = [
    'assets/images/figma2_logo.webp',
    'assets/images/flutter_logo.png',
    'assets/images/net_beans_logo.png',
    'assets/images/python_logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 550.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayCurve: Curves.ease,
              autoPlayAnimationDuration: Duration(seconds: 1),
              enlargeFactor: 0.1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
            ),
            items: imgconList.map((item) => Center(
              child: Image.network(item, fit: BoxFit.cover, )
            )).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgconList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => CarouselController().animateToPage(entry.key),
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Color.fromARGB(255, 114, 28, 28))
                        .withOpacity(_current == entry.key ? 0.9 : 0.2),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
