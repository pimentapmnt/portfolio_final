import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: const  Color.fromARGB(255, 114, 28, 28),
                    border: Border.all(color: Color.fromARGB(255, 114, 28, 28)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Color.fromARGB(255, 114, 28, 28),
                        onPressed: () {},
                      ),
                      
                    ],
                  ),
                ),
              ),
              
            ],
          );
        },
      ),
    );
  }
}
