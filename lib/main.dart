import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leccion',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Empresa XYZ . Registro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _direccionController = TextEditingController();
  final TextEditingController _fechaController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();
  String _resultado = '';


  void _MostarDatos() {
    String nombre = _nombreController.text;
    String direccion = _direccionController.text;
    String fecha = _fechaController.text;
    String cargo = _cargoController.text;

    setState(() {
      _resultado = 'Nombre: $nombre\nDirección: $direccion\nFecha: $fecha\nCargo: $cargo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("NOMBRE COMPLETO:"), //ETIQUETA
            const SizedBox(height: 10),
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ), //CAMPO DE TEXTO
            const SizedBox(height: 20),
            const Text("DIRECCION:"), //ETIQUETA
            const SizedBox(height: 10),
            TextField(
              controller: _direccionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ), //CAMPO DE TEXTO
            const SizedBox(height: 20),
            const Text("FECHA NACIMIENTO:"), //ETIQUETA
            const SizedBox(height: 10),
            TextField(
              controller: _fechaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ), //CAMPO DE TEXTO
            const SizedBox(height: 20),
            const Text("CARGO:"), //ETIQUETA
            const SizedBox(height: 10),
            TextField(
              controller: _cargoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ), //CAMPO DE TEXTO
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _MostarDatos,
              child: const Text('Mostar Datos'),
            ),
            const SizedBox(height: 20),
            Text(_resultado),
            const SizedBox(height: 10), // SEPARACIÓN ENTRE AMBOS BOTONES
          ],
        ),
      ),
    );
  }
}
