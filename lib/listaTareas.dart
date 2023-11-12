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
            fecha: '4 de octubre,2023',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Investigar sobre inteligencia artificial',
            fecha: '5 de noviembre,2023',
          ),
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Completar prueba en linea 2 Fisica',
            fecha: '5 de noviembre,2023',
          ),
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Comentar o participar en foro de Literatura',
            fecha: '23 de noviembre,2023',
          ),
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Realizar reposicion de examen Fisica',
            fecha: '28 de noviembre,2023',
          ),
          TareaCard(
            nombre: 'Gerson Lopez',
            descripcion: 'Investigar sobre el cambio climatico',
            fecha: '30 de noviembre,2023',
          ),
        ],
      ),
    );
  }
}

class TareaCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;

  const TareaCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
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