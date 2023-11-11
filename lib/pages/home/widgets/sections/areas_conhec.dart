import 'package:exemplo1/pages/home/widgets/carrossel_conhecimentos/carrossel_conhecimentos.dart';
import 'package:flutter/material.dart';
import 'package:exemplo1/breakpoints.dart';

class AreasConhec extends StatelessWidget {
  const AreasConhec({super.key});

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
                  Text('Áreas de conhecimento',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold)
                    )
                  ],
                ),
              CarrosselConhecimento()
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
              Text('Áreas de conhecimento',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold)
                ),
                CarrosselConhecimento()
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
            Text('Áreas de conhecimento',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold)
                ),
            CarrosselConhecimento()
          ],
        );
      }
    ); 
  }
}