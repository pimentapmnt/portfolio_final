import 'package:flutter/material.dart';
import 'package:exemplo1/breakpoints.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MidiasSociais extends StatelessWidget {
  const MidiasSociais({super.key});

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
                  Text('Redes sociais',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold)
                    )
                  ],
                ),
              Row(
                  children: [
                    Text('Onde me encontrar',
                      style: TextStyle(
                          fontSize: 20,
                          )
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                    icon: SvgPicture.asset('assets/images/linkedin_logo.png'),
                    onPressed: () {
                      
                    },)
                  ],
                )
            ],
          ),
            
          );
        }

        if (maxWidth >= mobileBreakpoint){
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
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('Onde me encontrar',
                      style: TextStyle(
                          fontSize: 20,
                          )
                    )
                  ],
                ),
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
            Column(
              children: [
                Text('Áreas de conhecimento',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold)
                    ),
                Text('Onde me encontrar',
                    style: TextStyle(
                      fontSize: 40,
                      )
                ),
              ],
            ),
          ],
        );
      }
    ); 
  }
}