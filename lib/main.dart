import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'modules/collect/collect_page.dart';
import 'modules/dist/dist_page.dart';
import 'modules/donation/donation_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'to-do: title',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 11, 63, 105),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DoacaoPage(),
    PontosColetaPage(),
    CentroDistribuicaoPage(),
  ];

  static const List<String> _titles = [
    'Doação',
    'Pontos de Coleta',
    'Centro de Distribuição',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titles[_selectedIndex]),
        elevation: 10,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            key: Key("DOACAO_NAVIGATION_BUTTON"),
            icon: Icon(Icons.inventory),
            label: 'Doação',
          ),
          BottomNavigationBarItem(
            key: Key("COLETA_NAVIGATION_BUTTON"),
            icon: Icon(Icons.local_shipping),
            label: 'Pontos de Coleta',
          ),
          BottomNavigationBarItem(
            key: Key("CENTRO_NAVIGATION_BUTTON"),
            icon: Icon(Icons.volunteer_activism),
            label: 'Centro de Distribuição',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
