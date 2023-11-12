import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NoticiaCard(
            titulo: 'Evento de graduacion',
            fecha: '31 de noviembre, 2023',
            contenido:
                '¡Te invitamos a nuestros proximos actos de graduacion este 2023!',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Conferencia sobre emprendimiento',
            fecha: '12 de noviembre, 2023',
            contenido:
                'No te pierdas la conferencia sobre la importancia del emprendimiento en nuestro pais.',
          ),
          NoticiaCard(
            titulo: 'Matriculo abierta',
            fecha: '30 de noviembre, 2023',
            contenido:
                'Se le informa a toda la comunidad CEUTEC y demas que la matricula para el proximo periodo academico se encuentra disponible.',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Feria de Tecnologia',
            fecha: '22 de noviembre, 2023',
            contenido:
                'Muestra tus habilidades y conocimientos sobre el maravilloso mundo de la tecnologia, esta es tu oportunidad.',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              contenido,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Noticias extends StatelessWidget {
  final List<Noticia> noticias;

  const Noticias({Key? key, required this.noticias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(noticias[index].imagenUrl),
                Text(noticias[index].titulo),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticias[index].descripcion),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Noticia({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}