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
                '¡Te invitamos a nuestros próximos actos de graduación este 2023!',
            imagenUrl: 
            'https://saboryestilo.com.mx/wp-content/uploads/2019/06/se-acerca-tu-fiesta-de-graduacion-preparate.jpg',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Conferencia sobre emprendimiento',
            fecha: '12 de noviembre, 2023',
            contenido:
                'No te pierdas la conferencia sobre la importancia del emprendimiento en nuestro país.',
            imagenUrl: 'https://whetu.org/wp-content/uploads/2021/06/EE_header-1024x655.jpg',
          ),
          NoticiaCard(
            titulo: 'Matrícula abierta',
            fecha: '30 de noviembre, 2023',
            contenido:
                'Se le informa a toda la comunidad CEUTEC y demás que la matrícula para el próximo periodo académico se encuentra disponible.',
            imagenUrl: 'https://cdn-icons-png.flaticon.com/512/4078/4078099.png',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Feria de Tecnología',
            fecha: '22 de noviembre, 2023',
            contenido:
                'Muestra tus habilidades y conocimientos sobre el maravilloso mundo de la tecnología, esta es tu oportunidad.',
            imagenUrl: 'https://forbes.es/wp-content/uploads/2022/11/tecnologia-cambio-futuro-humano.jpg',
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
  final String imagenUrl;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
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
            SizedBox(width: 16.0),
            Image.network(
              imagenUrl,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
