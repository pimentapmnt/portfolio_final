import 'package:exemplo1/pages/home/widgets/carrossel/carrossel.dart';
import 'package:flutter/material.dart';
import 'package:exemplo1/breakpoints.dart';



class Certificados extends StatelessWidget {
  const Certificados({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
      
        if (maxWidth >= tabletBreakpoint){
         // return SizedBox(height: 15,);
        return Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Certificados',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold)
                    )
                  ],
                ),
              Carrossel(),
            ],
          ),
            
          );
        }

        if (maxWidth >= mobileBreakpoint){
          // return SizedBox(height: 15,);
          return Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
              Text('Certificados',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold)
                ),
                Carrossel(),
              ],
            ),
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( 
            height: 30,
            width: double.infinity,
            ),
            Text('Certificados',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold)
                ),
              Carrossel()
          ],
        );
      }
    ); 
  }
}