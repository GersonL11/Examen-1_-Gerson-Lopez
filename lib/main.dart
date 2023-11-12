import 'package:flutter/material.dart';
import 'package:examenprueba2/listaTareas.dart';
import 'package:examenprueba2/noticias.dart';
import 'package:examenprueba2/home_screen.dart';
import 'package:examenprueba2/cambioMonedas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/noticias': (context) => NoticiasPage(),
        '/cambioMoneda': (context) => CambioMonedaPage(),
        '/listaTareas': (context) => ListaTareasPage(),
        '/podcast': (context) => PodcastApp(),
      },
    );
  }
}

class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcasts'),
      ),
      body: Column(
        children: [
          PodcastCard(
            artista: 'November rain',
            musica: 'Guns N Roses',
            imagenUrl:
                'https://media.revistagq.com/photos/5f992c10721a385494d12b6a/1:1/w_1080,h_1080,c_limit/november.png',
          ),
          SizedBox(height: 24.0), 
          AudioControls(),
          SizedBox(height: 24.0), 
          AudioProgressBar(),
          SizedBox(height: 24.0), 
          AudioOptions(),
        ],
      ),
    );
  }
}

class PodcastCard extends StatelessWidget {
  final String artista;
  final String musica;
  final String imagenUrl;

  const PodcastCard({
    required this.artista,
    required this.musica,
    required this.imagenUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40.0, 
                  backgroundImage: NetworkImage(imagenUrl),
                ),
                SizedBox(width: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artista,
                      style: TextStyle(fontSize: 18.0), 
                    ),
                    Text(
                      musica,
                      style: TextStyle(fontSize: 16.0), 
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AudioControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () {},
            iconSize: 50.0, 
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {},
            iconSize: 120.0, 
          ),
          IconButton(
            icon: Icon(Icons.fast_forward),
            onPressed: () {},
            iconSize: 50.0, 
          ),
        ],
      ),
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          LinearProgressIndicator(
            value: 0.5, 
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('1:45', style: TextStyle(fontSize: 14.0)), 
              Text('3:45', style: TextStyle(fontSize: 14.0)), 
            ],
          ),
        ],
      ),
    );
  }
}

class AudioOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {
                    },
                  ),
                  SizedBox(width: 8.0),
                  Text('Repeat', style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Spacer(), 
            ],
          ),
          SizedBox(height: 8.0),
          Divider(thickness: 4.0), 
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                    },
                  ),
                  SizedBox(width: 8.0),
                  Text('Shuffle', style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Spacer(), 
            ],
          ),
          SizedBox(height: 8.0),
          Divider(thickness: 4.0),
        ],
      ),
    );
  }
}
