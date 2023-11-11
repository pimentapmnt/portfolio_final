import 'package:exemplo1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:exemplo1/pages/home/widgets/sections/apresentecao.dart';
import 'package:exemplo1/pages/home/widgets/sections/certificados.dart';
import 'package:exemplo1/pages/home/widgets/sections/divisao_pagina.dart';
import 'package:exemplo1/pages/home/widgets/sections/areas_conhec.dart';
import 'package:flutter/material.dart';

import '../../breakpoints.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Color.fromARGB(0, 248, 243, 192),
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  Apresentacao(),
                  DivisaoPagina(),
                  Certificados(),
                  DivisaoPagina(),
                  AreasConhec(),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
