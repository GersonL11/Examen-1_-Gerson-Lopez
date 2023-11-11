import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App CEUTEC'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('CEUTEC'),
                accountEmail: Text('info@cuetec.edu.hn'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.cuetec.edu.hn/img/logo.png',
                  ),
                ),
              ),
              ListTile(
                title: Text('Noticias'),
                leading: Icon(Icons.newspaper),
                onTap: () {
                  // Navegar a la página de noticias
                  Navigator.pushNamed(context, '/noticias');
                },
              ),
              ListTile(
                title: Text('Cambio de monedas'),
                leading: Icon(Icons.currency_exchange),
                onTap: () {
                  // Navegar a la página de cambio de monedas
                  Navigator.pushNamed(context, '/cambioMoneda');
                },
              ),
              ListTile(
                title: Text('Lista de tareas'),
                leading: Icon(Icons.list),
                onTap: () {
                  // Navegar a la página de lista de tareas
                  Navigator.pushNamed(context, '/listaTareas');
                },
              ),
              ListTile(
                title: Text('Podcast'),
                leading: Icon(Icons.headset),
                onTap: () {
                  // Navegar a la página de podcast
                  Navigator.pushNamed(context, '/podcast');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
