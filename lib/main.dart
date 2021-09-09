import 'package:avatar_glow/avatar_glow.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'dart:math';
import 'design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List isUnlocked = [true, false, false, false, false, false];

void main() {
  runApp(MenuPage());
}

class MenuPage extends StatelessWidget {
  const MenuPage() : super();
  @override
  Widget build(BuildContext context) {
    double width = 380;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(''
                          "images/teste.png"),
                      fit: BoxFit.fitHeight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/title.png',
                    width: 380,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      circButton(FontAwesomeIcons.lightbulb, Instructions()),
                      circButton(FontAwesomeIcons.medal, Medals()),
                      circButton(FontAwesomeIcons.addressCard, Credits()),
                      circButton(FontAwesomeIcons.cog, Configuration()),
                    ],
                  ),
                  Wrap(
                    runSpacing: 16,
                    children: [
                      modeButton(
                          'FIGURAS',
                          'Identifique as figuras',
                          FontAwesomeIcons.image,
                          Colors.green,
                          width,
                          ImagesPage()),
                      modeButton(
                          'SONS',
                          'Repita os sons',
                          FontAwesomeIcons.music,
                          Colors.red,
                          width,
                          SoundPage()),
                      modeButton(
                          'LETRAS',
                          'Leia as palavras',
                          FontAwesomeIcons.amilia,
                          Colors.orange,
                          width,
                          LetterPage()),
                      modeButton(
                          'BOSS LEVEL',
                          'Palavras grandes! Boa Sorte!',
                          FontAwesomeIcons.pastafarianism,
                          Colors.blue,
                          width,
                          ChallengePage()),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Instructions extends StatelessWidget {
  const Instructions() : super();

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
                child: Text(
                    '(EF12LP07) Identificar e (re)produzir, em cantiga, quadras, quadrinhas, parlendas, trava-línguas e canções, rimas, aliterações, assonâncias, o ritmo de fala relacionado ao ritmo e à melodia das músicas e seus efeitos de sentido'),
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

class Medals extends StatelessWidget {
  const Medals() : super();

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
              SizedBox(
                height: 10.0,
              ),
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox(
                height: 20.0,
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

class Credits extends StatelessWidget {
  const Credits() : super();

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
              SizedBox(
                height: 10.0,
              ),
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/kerly.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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

class Configuration extends StatelessWidget {
  const Configuration() : super();

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
              SizedBox(
                height: 10.0,
              ),
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  title: Text('alinequeirozagq@gmail.com'),
                ),
              ),
              SizedBox(
                height: 20.0,
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

class ImagesPage extends StatelessWidget {
  const ImagesPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Figuras'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  faseButton('Fase 1', FontAwesomeIcons.star, Colors.green, 105,
                      ImagesPage(), isUnlocked[0]),
                  faseButton('Fase 2', FontAwesomeIcons.star, Colors.green, 105,
                      MenuPage(), isUnlocked[1]),
                  faseButton('Fase 3', FontAwesomeIcons.star, Colors.green, 105,
                      MenuPage(), isUnlocked[2])
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                faseButton('Fase 4', FontAwesomeIcons.star, Colors.green, 105,
                    MenuPage(), isUnlocked[3]),
                faseButton('Fase 5', FontAwesomeIcons.star, Colors.green, 105,
                    MenuPage(), isUnlocked[4]),
                faseButton('Fase 6', FontAwesomeIcons.star, Colors.green, 105,
                    MenuPage(), isUnlocked[5])
              ])
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}

class SoundPage extends StatelessWidget {
  const SoundPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sons'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  faseButton('Fase 1', FontAwesomeIcons.star, Colors.red, 105,
                      MenuPage()),
                  faseButton('Fase 2', FontAwesomeIcons.star, Colors.red, 105,
                      MenuPage()),
                  faseButton('Fase 3', FontAwesomeIcons.star, Colors.red, 105,
                      MenuPage())
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                faseButton('Fase 4', FontAwesomeIcons.star, Colors.red, 105,
                    MenuPage()),
                faseButton('Fase 5', FontAwesomeIcons.star, Colors.red, 105,
                    MenuPage()),
                faseButton('Fase 6', FontAwesomeIcons.star, Colors.red, 105,
                    MenuPage())
              ])
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }

  GestureDetector faseButton(
      String title, IconData icon, Color color, double width, page) {
    return GestureDetector(
        child: RawMaterialButton(
      onPressed: () {
        runApp(page);
      },
      child: Container(
        height: 105.0,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontFamily: 'Manrope',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
              child: FaIcon(icon, size: 35, color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}

class LetterPage extends StatelessWidget {
  const LetterPage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Letras'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  faseButton('Fase 1', FontAwesomeIcons.star, Colors.orange,
                      105, MenuPage()),
                  faseButton('Fase 2', FontAwesomeIcons.star, Colors.orange,
                      105, MenuPage()),
                  faseButton('Fase 3', FontAwesomeIcons.star, Colors.orange,
                      105, MenuPage())
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                faseButton('Fase 4', FontAwesomeIcons.star, Colors.orange, 105,
                    MenuPage()),
                faseButton('Fase 5', FontAwesomeIcons.star, Colors.orange, 105,
                    MenuPage()),
                faseButton('Fase 6', FontAwesomeIcons.star, Colors.orange, 105,
                    MenuPage())
              ])
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.orange,
          ),
        ),
      ),
    );
  }

  GestureDetector faseButton(
      String title, IconData icon, Color color, double width, page) {
    return GestureDetector(
        child: RawMaterialButton(
      onPressed: () {
        runApp(page);
      },
      child: Container(
        height: 105.0,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontFamily: 'Manrope',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
              child: FaIcon(icon, size: 35, color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}

class ChallengePage extends StatelessWidget {
  const ChallengePage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Boss'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  faseButton('Fase 1', FontAwesomeIcons.star, Colors.blue, 105,
                      MenuPage()),
                  faseButton('Fase 2', FontAwesomeIcons.star, Colors.blue, 105,
                      MenuPage()),
                  faseButton('Fase 3', FontAwesomeIcons.star, Colors.blue, 105,
                      MenuPage())
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                faseButton('Fase 4', FontAwesomeIcons.star, Colors.blue, 105,
                    MenuPage()),
                faseButton('Fase 5', FontAwesomeIcons.star, Colors.blue, 105,
                    MenuPage()),
                faseButton('Fase 6', FontAwesomeIcons.star, Colors.blue, 105,
                    MenuPage())
              ])
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }

  GestureDetector faseButton(
      String title, IconData icon, Color color, double width, page) {
    return GestureDetector(
        child: RawMaterialButton(
      onPressed: () {
        runApp(page);
      },
      child: Container(
        height: 105.0,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontFamily: 'Manrope',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
              child: FaIcon(icon, size: 35, color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}

class WinPage extends StatelessWidget {
  const WinPage() : super();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Text(
              'PARABENS!',
              style: TextStyle(
                fontSize: 50.0,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class ImageLevel extends StatefulWidget {
  @override
  _ImageLevelState createState() => _ImageLevelState();
}

class _ImageLevelState extends State<ImageLevel> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  bool testeFinal = false;
  String _text = 'Press the button and start speaking';
  List<String> figuras = ["boi", "foca", "gato", "porco", "rato", "sapo"];
  int randImg = Random().nextInt(6);
  int cont = 0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: Container(
          height: 80.0,
          width: 80.0,
          child: FloatingActionButton(
            onPressed: () {
              runApp(MenuPage());
            },
            child: const Icon(Icons.arrow_back),
            backgroundColor: Colors.blue,
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/animais/' + figuras[randImg] + '.png'),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  figuras[randImg].toUpperCase(),
                  style: TextStyle(
                    fontSize: 50.0,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(_text.contains(figuras[randImg])
                    ? 'PARABENS!'
                    : 'Vamos lá! Você consegue!'),
                Container(
                  alignment: Alignment.center,
                  child: AvatarGlow(
                    animate: _isListening,
                    glowColor: Theme.of(context).primaryColor,
                    endRadius: 75.0,
                    duration: const Duration(milliseconds: 2000),
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    repeat: true,
                    child: FloatingActionButton(
                      onPressed: _listen,
                      child: Icon(_isListening ? Icons.mic : Icons.mic_none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          localeId: 'pt-BR',
          onResult: (val) => setState(() {
            _text = val.recognizedWords.toLowerCase();
            if (_text.contains(figuras[randImg])) {
              setState(() => _isListening = false);
              _speech.stop();
              cont++;
              _text = '';
              randImg = Random().nextInt(6);
              if (cont == 5) {
                isUnlocked[isUnlocked.indexOf(false)] = true;
                runApp(WinPage());
              }
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}
