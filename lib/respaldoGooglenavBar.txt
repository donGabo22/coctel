import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<GButton> tabs = [];
  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: selectedIndex,
        children: <Widget>[
          buildPage(0),
          buildPage(1),
          buildPage(2),
          buildPage(3),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 60,
              color: Colors.black.withOpacity(.20),
              offset: const Offset(0, -15),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: GNav(
            gap: 8,
            color: Colors.grey[800],
            activeColor: Colors.purple,
            iconSize: 24,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            duration: const Duration(milliseconds: 1000),
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Inicio',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'La selección de hoy',
              ),
              GButton(
                icon: LineIcons.hotDog,
                text: 'Comidas',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Buscar',
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget buildPage(int index) {
    String pageTitle;
    String pageContent;

    if (index == 0) {
      pageTitle = 'Inicio';
      pageContent = '¡Buenos días!';
      
      
    } else if (index == 1) {
      pageTitle = 'La selección de hoy';
      pageContent = 'Contenido de la página La selección de hoy';
    } else if (index == 2) {
      pageTitle = 'Comidas';
      pageContent = 'Anuncio: Que rico!';
    } else {
      pageTitle = 'Buscar';
      pageContent = 'Contenido de la página Buscar';
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: colors[index],
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: -10,
                blurRadius: 60,
                color: Colors.black.withOpacity(.20),
                offset: const Offset(0, 15),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Página: $pageTitle',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Text(
                  pageContent,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}