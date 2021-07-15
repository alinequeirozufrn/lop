import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

void main() {
  runApp(
      MenuPage()
  );
}

class MenuPage extends StatelessWidget {
  const MenuPage() : super();

  @override
  Widget build(BuildContext context) {
    double width = 380;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('PROJETO DE LOP',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 36.0,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 0.7
                          ..color = Colors.white60
                      ),
                    ),
                    Text('Jogo em desenvolvimento',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 20.0,
                          color: Colors.white60
                      ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    circButton(FontAwesomeIcons.lightbulb,InstrucaoPage()),
                    circButton(FontAwesomeIcons.medal,MedalhasPage()),
                    circButton(FontAwesomeIcons.addressCard,CreditosPage()),
                    circButton(FontAwesomeIcons.cog,ConfigPage()),
                  ],
                ),
                Wrap(
                  runSpacing: 16,
                  children: [
                    modeButton('FIGURAS','Identifique as figuras',FontAwesomeIcons.image,Colors.green, width,FigurasPage()),
                    modeButton('SONS','Repita os sons',FontAwesomeIcons.music,Colors.red, width,SonsPage()),
                    modeButton('LETRAS','Leia as palavras',FontAwesomeIcons.amilia,Colors.orange, width,LetrasPage()),
                    modeButton('BOSS LEVEL','Palavras grandes! Boa Sorte!',FontAwesomeIcons.pastafarianism,Colors.blue, width,BossPage()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Padding circButton(IconData icon, page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: RawMaterialButton(
        onPressed: (){ runApp(page); },
        fillColor: Colors.white,
        shape: CircleBorder(),
        constraints: BoxConstraints(minHeight: 35,minWidth: 35),
        child: FaIcon(icon,size: 22, color: Colors.deepPurple,),
      ),
    );
  }
  GestureDetector modeButton(
      String title,
      String subtitle,
      IconData icon,
      Color color,
      double width,
      page
      ){
    return GestureDetector(
      child: RawMaterialButton(
        onPressed: (){ runApp(page); },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          fontSize: 18.0,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          subtitle,
                           style: TextStyle(
                           fontWeight: FontWeight.bold,
                           decoration: TextDecoration.none,
                           fontFamily: 'Manrope',
                           color: Colors.white,
                           fontSize: 18.0,
                           ),
                        ),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
                child: FaIcon(icon, size: 35, color: Colors.white),
              )
            ],
          ),
        ),
      )
    );
  }
}
class InstrucaoPage extends StatelessWidget {
  const InstrucaoPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PÚBLICO ALVO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text('Alunos do 1º ao 9º ano do Ensino Fundamental.'),
              ),
              Text(
                'OBJETIVO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text('(EF12LP07) Identificar e (re)produzir, em cantiga, quadras, quadrinhas, parlendas, trava-línguas e canções, rimas, aliterações, assonâncias, o ritmo de fala relacionado ao ritmo e à melodia das músicas e seus efeitos de sentido'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class MedalhasPage extends StatelessWidget {
  const MedalhasPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/SleepyMonster.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'PÁGINA EM DESENVOLVIMENTO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Entre em contato com o desenvolvedor'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class CreditosPage extends StatelessWidget {
  const CreditosPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'Aline Queiroz',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'DESENVOLVEDORA',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Bacharelando em Ciências e Tecnologia'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/kerly.jpeg'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'Kerly Damasceno',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'ORIENTADORA',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Bacharelando em Pedagogia'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('kerly_alessandra@yahoo.com.br'),
                ),
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class ConfigPage extends StatelessWidget {
  const ConfigPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/SleepyMonster.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'PÁGINA EM DESENVOLVIMENTO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Entre em contato com o desenvolvedor'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class SonsPage extends StatelessWidget {
  const SonsPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/SleepyMonster.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'PÁGINA EM DESENVOLVIMENTO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Entre em contato com o desenvolvedor'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class LetrasPage extends StatelessWidget {
  const LetrasPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/SleepyMonster.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'PÁGINA EM DESENVOLVIMENTO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Entre em contato com o desenvolvedor'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class BossPage extends StatelessWidget {
  const BossPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/SleepyMonster.png'),
              ),
              SizedBox( height: 10.0,),
              Text(
                'PÁGINA EM DESENVOLVIMENTO',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                child: Text('Entre em contato com o desenvolvedor'),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox( height: 20.0,),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
class FigurasPage extends StatefulWidget {
  @override
  _FigurasPageState createState() => _FigurasPageState();
}
class _FigurasPageState extends State<FigurasPage>{
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      rightDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MenuPage());
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}