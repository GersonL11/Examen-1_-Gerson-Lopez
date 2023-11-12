import 'package:flutter/material.dart';


class ListaTareasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Realizar la presentación del proyecto',
            fecha: '31 de octubre, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Juan Pérez',
            descripcion: 'Investigar sobre inteligencia artificial',
            fecha: '5 de noviembre, 2023',
            url: 'https://example.com',
          ),
          // Agrega más ejemplos según sea necesario
        ],
      ),
    );
  }
}

class TareaCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const TareaCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.grey),
                    SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}