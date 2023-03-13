import 'package:flutter/material.dart';
import 'screens/red.dart';
import 'screens/green.dart';
import 'screens/blue.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finacy',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(0, 4, 174, 66),
              brightness: Brightness.dark,
              //  secondary: Colors.blue
              primary: Colors.red)),
      home: const MyHomePage(title: 'Finacy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* int _counter = 0;

  void _incrementCounter() {
    setState(() {
//      _counter++;
    });
  }
  */

  int _paginaAtual = 0;
  void aoMudarDeAba(int indice) {
    setState(() {
      _paginaAtual = indice;
    });
  }

  final List<Widget> _telas = [
    const Red(),
    const Green(),
    const Blue(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financy'),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountEmail: Text("thiagoewer@gmail.com"),
            accountName: Text("Thiago Ewerton"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Meu Perfil"),
            onTap: () {
              Navigator.pop(context);
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("Meu Histórico"),
            onTap: () {
              Navigator.pop(context);
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: const Icon(Icons.warning_sharp),
            title: const Text("Dívidas"),
            onTap: () {
              Navigator.pop(context);
              //Navegar para outra página
            },
          ),
        ],
      )),
      body: _telas[_paginaAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaAtual,
        onTap: aoMudarDeAba,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            label: "Red",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            label: "Green",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            label: "Blue",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: /* _incrementCounter*/ () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
