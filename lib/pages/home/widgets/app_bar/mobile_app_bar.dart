import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 248, 243, 192),
      title: Text('Victor de Oliveira Pimenta', 
      style: TextStyle(color: Color.fromARGB(255, 114, 28, 28))
      ),
      centerTitle: true,
    );
  }
}
