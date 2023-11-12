import 'package:flutter/material.dart';

class CambioMonedaPage extends StatefulWidget {
  const CambioMonedaPage({Key? key}) : super(key: key);

  @override
  _CambioMonedasPageState createState() => _CambioMonedasPageState();
}

class _CambioMonedasPageState extends State<CambioMonedaPage> {
  String _monedaSeleccionada = 'Euro';
  double _precioCompraEuro = 1.0;
  double _precioVentaEuro = 1.0;
  double _precioCompraDolar = 1.0;
  double _precioVentaDolar = 1.0;
  TextEditingController _cantidadController = TextEditingController();
  double _resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: _monedaSeleccionada,
              items: ['Euro', 'Dólar'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _monedaSeleccionada = newValue ?? 'Euro';
                  // Puedes ajustar estos valores según tus necesidades reales.
                  _actualizarPrecios();
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('Precios de Compra/Venta:'),
            Text('Euro - Compra: $_precioCompraEuro, Venta: $_precioVentaEuro'),
            Text('Dólar - Compra: $_precioCompraDolar, Venta: $_precioVentaDolar'),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _cantidadController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Cantidad a cambiar',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _calcularCambio();
                });
              },
              child: Text('Calcular Cambio'),
            ),
            SizedBox(height: 16.0),
            Text('Resultado: $_resultado'),
          ],
        ),
      ),
    );
  }

  void _actualizarPrecios() {
    // Puedes ajustar estos valores según tus necesidades reales.
    if (_monedaSeleccionada == 'Euro') {
      _precioCompraEuro = 1.08;
      _precioVentaEuro = 1.12;
    } else if (_monedaSeleccionada == 'Dólar') {
      _precioCompraDolar = 0.95;
      _precioVentaDolar = 1.0;
    }
  }

  void _calcularCambio() {
    double cantidad = double.tryParse(_cantidadController.text) ?? 0.0;

    if (_monedaSeleccionada == 'Euro') {
      _resultado = cantidad * _precioCompraEuro;
    } else if (_monedaSeleccionada == 'Dólar') {
      _resultado = cantidad * _precioCompraDolar;
    }
  }
}
