import 'package:exemplo1/breakpoints.dart';
import 'package:flutter/material.dart';

class DivisaoPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint)
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color.fromARGB(255, 114, 28, 28)))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 30,
              spacing: 20,
            ),
          );
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Color.fromARGB(255, 114, 28, 28)))),
          
        );
      }
    );
  }
}
