import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 248, 243, 192),
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Victor de Oliveira Pimenta', selectionColor: Colors.red,),
          const SizedBox(width: 32),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: TextButton(
              child: Text('Certificados'),
              onPressed: () {
                
              },
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: TextButton(
              child: Text('Midias Sociais'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
