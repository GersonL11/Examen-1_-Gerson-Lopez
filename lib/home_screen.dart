import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('CEUTEC'),
              accountEmail: Text('info@ceetec.edu.hn'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(''), // Agrega la URL de la imagen.
              ),
            ),
            ListTile(
              title: Text('Noticias'),
              leading: Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('Cambio de monedas'),
              leading: Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/cambioMoneda');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/listaTareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              leading: Icon(Icons.headset),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}