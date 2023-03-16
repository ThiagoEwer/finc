import 'package:flutter/material.dart';
import 'views/blue.dart';
import 'views/red.dart';
import 'views/green.dart';

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
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Fluxo",
          ),
        ],
      ),
    );
  }
}
