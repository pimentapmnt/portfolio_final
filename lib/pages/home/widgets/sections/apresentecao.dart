import 'package:exemplo1/breakpoints.dart';
import 'package:flutter/material.dart';

class Apresentacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.4,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/foto_de_perfil.jpg'),
                      child: ClipOval(
                        child: Image.asset('assets/images/foto_de_perfil.jpg',
                        fit: BoxFit.contain,)
                        ),
                    ),
                ),
              ),
            Expanded(
              child: Column(
                children: [
                  Text('Olá, seja bem vindo ao meu portfólio!', style: TextStyle(fontSize: 35),),
                  SizedBox(height: 1,),
                  Text('Sou o Victor, nascido em 2004, morador de São Caetano do Sul, estudante do IMT. Aqui você verá um pouco do meu conhecimento e projetos, além de hobbies.', style: TextStyle(fontSize: 20),),
                  Text('Inglês intermediario, e iniciante em espanhol. Tenho certa experiencia em desenvolvimento de Bots com python, além de que fiz algumas aulas de design de interiores', style: TextStyle(fontSize: 20),),

                  
                ],
              ),
            )
            ]
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return Flexible(
      
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/foto_de_perfil.jpg',),
                      child: ClipOval(
                        child: Image.asset('assets/images/foto_de_perfil.jpg',
                        fit: BoxFit.contain,)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Sou o Victor, nascido em 2004, morador de São Caetano do Sul, estudante do IMT. Aqui você verá um pouco do meu conhecimento e projetos, além de hobbies.', style: TextStyle(fontSize: 20),),
                  Text('Inglês intermediario, e iniciante em espanhol. Tenho certa experiencia em desenvolvimento de Bots com python, além de que fiz algumas aulas de design de interiores', style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          );
        }

        return Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/foto_de_perfil.jpg',),
                  child: ClipOval(
                    child: Image.asset('assets/images/foto_de_perfil.jpg',
                    fit: BoxFit.contain,)
                  )
                ),
              ),
                Text('Sou o Victor, nascido em 2004, morador de São Caetano do Sul, estudante do IMT. Aqui você verá um pouco do meu conhecimento e projetos, além de hobbies.', style: TextStyle(fontSize: 20),),
                  Text('Inglês intermediario, e iniciante em espanhol. Tenho certa experiencia em desenvolvimento de Bots com python, além de que fiz algumas aulas de design de interiores', style: TextStyle(fontSize: 20),),
            ],
          ),
        );
        
      },
    );
  }
}
