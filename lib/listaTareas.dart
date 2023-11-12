import 'package:flutter/material.dart';

class ListaTareasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tareas'),
      ),
      body: Center(
        child: Text('Esta es la página de la lista de tareas'),
      ),
    );
  }
}