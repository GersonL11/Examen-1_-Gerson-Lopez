import 'package:flutter/material.dart';

class CambioMonedaPage extends StatefulWidget {
  @override
  _CambioMonedaPageState createState() => _CambioMonedaPageState();
}

class _CambioMonedaPageState extends State<CambioMonedaPage> {
  String _monedaSeleccionada = 'Dólar';
  TextEditingController _controller = TextEditingController();
  String _resultado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Moneda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seleccionar moneda:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _cambiarMoneda('Dólar');
                  },
                  child: Text('Dólar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _cambiarMoneda('Euro');
                  },
                  child: Text('Euro'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            _buildPrecio('Compra', _calcularValorCompra()),
            _buildPrecio('Venta', _calcularValorVenta()),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad a convertir',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calcularConversion();
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 16.0),
            Text(
              'LPS. $_resultado',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _cambiarMoneda(String nuevaMoneda) {
    setState(() {
      _monedaSeleccionada = nuevaMoneda;
      _controller.clear(); 
      _resultado = ''; 
    });
  }

  Widget _buildPrecio(String tipo, String valor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$tipo:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'L. $valor',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  String _calcularValorCompra() {
    if (_monedaSeleccionada == 'Dólar') {
      return '24.6834';
    } else if (_monedaSeleccionada == 'Euro') {
      return '27.50'; 
    }
    return '';
  }

  String _calcularValorVenta() {
    if (_monedaSeleccionada == 'Dólar') {
      return '24.8068';
    } else if (_monedaSeleccionada == 'Euro') {
      return '27.80'; 
    }
    return '';
  }

  void _calcularConversion() {
    double cantidad = double.tryParse(_controller.text) ?? 0.0;
    double tasa;

    if (_monedaSeleccionada == 'Dólar') {
      tasa = cantidad * double.parse(_calcularValorVenta());
    } else if (_monedaSeleccionada == 'Euro') {
      tasa = cantidad * double.parse(_calcularValorVenta());
    } else {
      tasa = 0.0;
    }

    setState(() {
      _resultado = tasa.toStringAsFixed(2);
    });
  }
}