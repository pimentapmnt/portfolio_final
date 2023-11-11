import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carrossel extends StatefulWidget {
  Carrossel({Key? key}) : super(key: key);

  @override
  _CarrosselState createState() => _CarrosselState();
}

class _CarrosselState extends State<Carrossel> {
  int _current = 0;
  final List<String> imgList = [
    'assets/images/certificado_cibersecurity.png',
    'assets/images/certificado_java.png',
    'assets/images/certificado_linux.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 650.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayCurve: Curves.easeInOutExpo,
              autoPlayAnimationDuration: Duration(seconds: 1),
              enlargeFactor: 0.1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
            ),
            items: imgList.map((item) => Center(
              child: Image.asset(item, fit: BoxFit.cover, )
            )).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
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
